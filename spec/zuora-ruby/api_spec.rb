require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec_helper'))

describe Zuora::Ruby::Api do
  before do
    Zuora::Ruby::Api.clear
  end

  describe "login success" do
    before do
      FakeWeb.register_uri(:post, ZUORA::Soap::DefaultEndpointUrl, :body => xml_mock("login_success"))
    end

    it "should return and save the session header" do
      Zuora::Ruby::Api.login("hello", "world", nil).should == "foobar"
      Zuora::Ruby::Api.session.nil?.should_not be_true
      Zuora::Ruby::Api.session.session.should == "foobar"
    end
  end

  describe "login failed" do
    before do
      FakeWeb.register_uri(:post, ZUORA::Soap::DefaultEndpointUrl, :body => xml_mock("login_failed"))
    end

    it "should return and save the session header" do
      lambda {Zuora::Ruby::Api.login("hello", "world", nil) }.should raise_error(SOAP::FaultError)
    end
  end
end
