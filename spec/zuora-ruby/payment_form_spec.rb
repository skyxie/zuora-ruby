require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec_helper'))

describe Zuora::Ruby::PaymentForm do
  describe "signature" do
    before do
      @id = "4028e697325f8e970132603326446b33"
      @tenant_id = 10514
      @timestamp = 1316846058955
      @token = "7av18bEz97Jrq9K6z0QPyvJpIqIxSmZc"
      @api_security_key = "PEq1yiahIyFO6XxpyuCWyLoG4ym_HAklH2-FfAisLuk="

      @form = Zuora::Ruby::PaymentForm.new(@id, @tenant_id, @token, @api_security_key, @timestamp)
    end

    it "should match the example string" do
      @form.signature_params_str.should == "id=4028e697325f8e970132603326446b33&tenantId=10514&timestamp=1316846058955&token=7av18bEz97Jrq9K6z0QPyvJpIqIxSmZcPEq1yiahIyFO6XxpyuCWyLoG4ym_HAklH2-FfAisLuk="
    end

    it "should match the example signature" do
      @form.signature.should == "ODU2ODMyZmY5YmFjNDQzZDQ4NmU2MDg3ODNkNzhlNTc="
    end

    it "should build the iframe url from the iframe url constant" do
      @form.iframe_url.should =~ /^#{Zuora::Ruby::PaymentForm::IFRAME_URL}/
    end

    it "should build the iframe url with a method" do
      @form.iframe_url.should =~ /method=requestPage/
    end

    it "should build the iframe url with the signature" do
      @form.iframe_url.should =~ /signature=#{@form.signature}/
    end

    it "should build the iframe url without the api_security_key" do
      @form.iframe_url.should_not =~ Regexp.new(@api_security_key)
    end
  end
end