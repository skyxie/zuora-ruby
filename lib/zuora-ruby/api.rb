module Zuora
  module Ruby

    # This module is a wrapper for login and persisting the SOAP driver
    module Api
      extend self

      attr_reader :session, :login, :credentials

      def query(query)
        q = ZUORA::Query.new
        q.queryString = query
        results = driver.query(q)
        return results
      end
      
      %w{create update subscribe delete}.each do |method|
        self.define_method(method) do |objs|
          driver.send(method, objs)
        end
      end

      def login(username, password, logstream=STDERR)
        @credentials = ZUORA::Login.new(username, password)

        @driver ||= ZUORA::Soap.new
        
        @session = ZUORA::SessionHeader.new
        @driver.wiredump_dev = logstream
        @driver.headerhandler.set @session

        @session.session = @driver.login(credentials).result.session
      end

      def logged_in?
        !@session.nil? && !@session.session.nil?
      end
      
      def driver
        if logged_in? && @driver
          @driver
        else
          raise "Not logged in!"
        end
      end

      def clear
        @session = nil
      end
    end

  end
end