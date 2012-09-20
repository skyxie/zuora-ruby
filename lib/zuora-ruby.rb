require "zuora-ruby/version"

gem "soap4r"

require 'active_support/core_ext'

require 'zuora-ruby/model'
require 'zuora-ruby/model/effective_range'
require 'zuora-ruby/model/cache'
require 'zuora-ruby/model/relationships'
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

