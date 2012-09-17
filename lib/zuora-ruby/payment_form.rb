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

      def initialize(id, tenant_id, token, api_security_key, timestamp=(Time.now.to_f * 10**3).to_i)
        @id, @tenantId, @token, @api_security_key, @timestamp = [id, tenant_id, token, api_security_key, timestamp]
      end

      def signature_params_str
        params = %w{id tenantId timestamp}.map{ |attr| "#{attr}=#{self.send(attr)}"}
        params << "token=#{@token + @api_security_key}"
        params.join("&")
      end

      def signature
        Base64.encode64(Digest::MD5.hexdigest(signature_params_str)).chomp
      end

      def params_str
        params = ["method=requestPage"]
        params += %w{id tenantId timestamp token signature}.map{ |attr| "#{attr}=#{self.send(attr)}"}
        params.join("&")
      end

      def iframe_url
        "#{IFRAME_URL}?#{params_str}"
      end

    end

  end
end