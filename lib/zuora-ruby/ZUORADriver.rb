require 'soap/rpc/driver'

module ZUORA

class Soap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://www.zuora.com/apps/services/a/38.0"
  MappingRegistry = ::SOAP::Mapping::Registry.new

  Methods = [
    [ "",
      "login",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "login"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "loginResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "subscribe",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "subscribe"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "subscribeResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "create",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "create"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "createResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "generate",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "generate"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "generateResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "update",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "update"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "updateResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "delete",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "delete"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "deleteResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "execute",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "execute"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "executeResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "query",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "query"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "queryResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "queryMore",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "queryMore"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "queryMoreResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "getUserInfo",
      [ ["in", "getUserInfo", ["::SOAP::SOAPElement", "http://api.zuora.com/", "getUserInfo"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "getUserInfoResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "amend",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "amend"], true],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "amendResponse"], true] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = MappingRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

end
