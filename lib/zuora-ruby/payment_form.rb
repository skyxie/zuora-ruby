require 'base64'
require 'digest/md5'

module Zuora
  module Ruby

    # This class is the model used to build a payment form
    class PaymentForm

      IFRAME_URL = "https://www.zuora.com/apps/PublicHostedPage.do"

      attr_reader :id, :tenantId, :timestamp

      # Combine the camel case standard of the Zuora API and and the underscore standard in Ruby
      alias :tenant_id :tenantId

      def initialize(id, tenant_id, token, api_security_key, timestamp=Time.now.to_i)
        @id, @tenantId, @token, @api_security_key, @timestamp = [id, tenant_id, token, api_security_key, timestamp]
      end

      def token
        @token + @api_security_key
      end

      def params_str
        %w{id tenantId timestamp token}.map do |attr|
          "#{attr}=#{self.send(attr)}"
        end.join("&")
      end

      def signature
        Base64.encode64(Digest::MD5.hexdigest(params_str)).chomp
      end

      def iframe_url
        "#{IFRAME_URL}?method=requestPage&#{params_str}&signature=#{signature}"
      end

    end

  end
end