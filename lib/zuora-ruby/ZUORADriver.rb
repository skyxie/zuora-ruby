#--
#   Copyright (c) 2010 Zuora, Inc.
#
#  Permission is hereby granted, free of charge, to any person obtaining a copy of 
#  this software and associated documentation files (the "Software"), to use copy, 
#  modify, merge, publish the Software and to distribute, and sublicense copies of 
#  the Software, provided no fee is charged for the Software.  In addition the
#  rights specified above are conditioned upon the following:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
#
#  Zuora, Inc. or any other trademarks of Zuora, Inc.  may not be used to endorse
#  or promote products derived from this Software without specific prior written
#  permission from Zuora, Inc.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL
#  ZUORA, INC. BE LIABLE FOR ANY DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES
#  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
#  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
#  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
#  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
#  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#++
require 'soap/rpc/driver'

module ZUORA

class Soap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://www.zuora.com/apps/services/a/38.0"

  Methods = [
    [ "",
      "login",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "login"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "loginResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ZUORA::UnexpectedErrorFault_"=>{:name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"http://api.zuora.com/", :use=>"literal", :namespace=>nil}, "ZUORA::LoginFault_"=>{:name=>"LoginFault", :encodingstyle=>"document", :ns=>"http://api.zuora.com/", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "subscribe",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "subscribe"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "subscribeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ZUORA::UnexpectedErrorFault_"=>{:name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"http://api.zuora.com/", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "subscribeWithExistingAccount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "subscribeWithExistingAccount"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "subscribeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ZUORA::UnexpectedErrorFault_"=>{:name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"http://api.zuora.com/", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "create",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "create"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "createResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ZUORA::InvalidTypeFault_"=>{:name=>"InvalidTypeFault", :encodingstyle=>"document", :ns=>"http://api.zuora.com/", :use=>"literal", :namespace=>nil}, "ZUORA::UnexpectedErrorFault_"=>{:name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"http://api.zuora.com/", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "update",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "update"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "updateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ZUORA::InvalidTypeFault_"=>{:name=>"InvalidTypeFault", :encodingstyle=>"document", :ns=>"http://api.zuora.com/", :use=>"literal", :namespace=>nil}, "ZUORA::UnexpectedErrorFault_"=>{:name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"http://api.zuora.com/", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "query",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "query"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "queryResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ZUORA::InvalidQueryLocatorFault_"=>{:name=>"InvalidQueryLocatorFault", :encodingstyle=>"document", :ns=>"http://api.zuora.com/", :use=>"literal", :namespace=>nil}, "ZUORA::MalformedQueryFault_"=>{:name=>"MalformedQueryFault", :encodingstyle=>"document", :ns=>"http://api.zuora.com/", :use=>"literal", :namespace=>nil}, "ZUORA::UnexpectedErrorFault_"=>{:name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"http://api.zuora.com/", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "delete",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "delete"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.zuora.com/", "deleteResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ZUORA::InvalidValueFault_"=>{:name=>"InvalidValueFault", :encodingstyle=>"document", :ns=>"http://api.zuora.com/", :use=>"literal", :namespace=>nil}, "ZUORA::InvalidTypeFault_"=>{:name=>"InvalidTypeFault", :encodingstyle=>"document", :ns=>"http://api.zuora.com/", :use=>"literal", :namespace=>nil}, "ZUORA::UnexpectedErrorFault_"=>{:name=>"UnexpectedErrorFault", :encodingstyle=>"document", :ns=>"http://api.zuora.com/", :use=>"literal", :namespace=>nil}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
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
