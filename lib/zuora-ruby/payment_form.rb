require 'base64'
require 'digest/md5'

module Zuora
  module Ruby

    # This class is the model used to build a payment form
    class PaymentForm

      IFRAME_URL = "https://www.zuora.com/apps/PublicHostedPage.do"

      attr_reader :id, :tenantId, :timestamp, :token

      # Combine the camel case standard of the Zuora API and and the underscore standard in Ruby
      alias :tenant_id :tenantId

      def signature_params_str
        %w{id tenantId timestamp token}.map{ |attr| "#{attr}=#{self.send(attr)}"}.join("&") + @api_security_key
      end

      def signature
        Base64.encode64(Digest::MD5.hexdigest(signature_params_str)).chomp
      end

      def method
        "requestPage"
      end

      def params_str
        %w{method id tenantId timestamp token signature}.map{|attr| "#{attr}=#{self.send(attr)}"}.join("&")
      end

      def iframe_url
        "#{IFRAME_URL}?#{params_str}"
      end

      def initialize(id, tenant_id, token, api_security_key, timestamp)
        @id, @tenantId, @token, @api_security_key, @timestamp = [id, tenant_id, token, api_security_key, timestamp]
      end

      class << self
        attr_accessor :api_security_key, :tenant_id

        # The repository stores a mapping of tokens to payment forms
        def repository
          @repository ||= Hash.new
        end

        # Randomly generate a 32 character token that has not already been used
        def create_token
          begin
            token = 32.times.map{ rand(36).to_s(36) }.join # 32 alphanumeric characters
          end while repository[token] && repository[token] < Time.now
          repository[token] = Time.now
          token
        end

        # Primary interface to create a payment form
        def create_payment_form(id, timestamp = to_zuora_time(Time.now), token = create_token)
          PaymentForm.new(id, tenant_id, token, api_security_key, timestamp)
        end

        # Validate response from Z-Payments
        def validate(response)
          # Invalid if the zuora timestamp is more than 300 seconds ago
          timestamp = from_zuora_time(response["timestamp"].to_i)
          return false if timestamp < Time.now - 300
          # Match the signature with the signature from zuora
          create_payment_form(response["id"], response["timestamp"], response["token"]).signature == response["signature"]
        end

        def from_zuora_time(zuora_time)
          Time.at(zuora_time.to_f / 1000.0)
        end

        def to_zuora_time(time)
          (time.to_f * 10**3).to_i
        end
      end

    end

  end
end