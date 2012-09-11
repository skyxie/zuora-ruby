require "zuora-ruby/version"

gem "soap4r"
require 'zuora-ruby/ZUORA'
require 'zuora-ruby/ZUORADriver'
require 'zuora-ruby/ZUORAMappingRegistry'

class SOAP::Header::HandlerSet
  def reset
    @store = XSD::NamedElements.new
  end

  def set(header)
    reset
    add header
  end
end

module Zuora
  module Ruby
    extend self

    attr_reader :session, :login, :credentials

    def query(query)
      q = ZUORA::Query.new
      q.queryString = query
      results = driver.query(q)
      return results
    end
    
    def create(objs)
      return driver.create(objs)
    end
    
    def update(objs)
      return driver.update(objs)
    end

    def login(username, password, logstream=STDERR)
      @credentials = ZUORA::Login.new(username, password)

      @driver ||= ZUORA::Soap.new
      
      @session = ZUORA::SessionHeader.new
      @driver.headerhandler.set @session
      @driver.wiredump_dev = logstream

      @session.session = @driver.login(credentials).result.session
    end

    def logged_in?
      !@session.session.nil?
    end
    
    def driver
      if logged_in? && @driver
        @driver
      else
        raise "Not logged in!"
      end
    end
    
  end
end
