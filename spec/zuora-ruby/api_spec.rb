require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec_helper'))

describe Zuora::Ruby::Api do
  before do
    Zuora::Ruby::Api.clear
  end

  it "should return and save the session header" do
    FakeWeb.register_uri(:post, ZUORA::Soap::DefaultEndpointUrl, :body => xml_mock("login_success"))
    Zuora::Ruby::Api.login("hello", "world", nil).should == "foobar"
    Zuora::Ruby::Api.session.nil?.should_not be_true
    Zuora::Ruby::Api.session.session.should == "foobar"
  end

  it "should return and save the session header" do
    FakeWeb.register_uri(:post, ZUORA::Soap::DefaultEndpointUrl, :body => xml_mock("login_failed"))
    lambda {Zuora::Ruby::Api.login("hello", "world", nil) }.should raise_error(SOAP::FaultError)
  end
end
