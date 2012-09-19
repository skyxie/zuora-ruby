require "zuora-ruby/version"

gem "soap4r"

require 'zuora-ruby/model'
require 'zuora-ruby/effective_range'
require 'zuora-ruby/payment_form'

require 'zuora-ruby/ZUORA'
require 'zuora-ruby/ZUORADriver'
require 'zuora-ruby/ZUORAMappingRegistry'

require 'zuora-ruby/api'

class SOAP::Header::HandlerSet
  def reset
    @store = XSD::NamedElements.new
  end

  def set(header)
    reset
    add header
  end
end

