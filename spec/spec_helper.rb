require 'zuora-ruby'
require 'ruby-debug'
require 'fakeweb'

# Force soap4r to user Net::HTTP so that it can be mocked
require 'soap/netHttpClient'
SOAP::HTTPStreamHandler.send :remove_const, :Client
SOAP::HTTPStreamHandler.const_set(:Client, SOAP::NetHttpClient)
FakeWeb.allow_net_connect = false

def xml_mock(name)
  File.read(File.join(File.dirname(__FILE__), "mocks", "#{name}.xml"))
end

RSpec.configure do |config|
  config.mock_with :mocha
end