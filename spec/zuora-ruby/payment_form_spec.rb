require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec_helper'))

describe Zuora::Ruby::PaymentForm do
  before do
    @id = "4028e697325f8e970132603326446b33"
    @tenant_id = 10514
    @timestamp = 1316846058955
    @token = "7av18bEz97Jrq9K6z0QPyvJpIqIxSmZc"
    @api_security_key = "PEq1yiahIyFO6XxpyuCWyLoG4ym_HAklH2-FfAisLuk="

    @signature_params_str = "id=4028e697325f8e970132603326446b33&tenantId=10514&timestamp=1316846058955&token=7av18bEz97Jrq9K6z0QPyvJpIqIxSmZcPEq1yiahIyFO6XxpyuCWyLoG4ym_HAklH2-FfAisLuk="
    @signature = "ODU2ODMyZmY5YmFjNDQzZDQ4NmU2MDg3ODNkNzhlNTc="

    @form = Zuora::Ruby::PaymentForm.new(@id, @tenant_id, @token, @api_security_key, @timestamp)
  end

  describe "instance" do
    it "should generate example string" do
      @form.signature_params_str.should == @signature_params_str
    end

    it "should generate example signature" do
      @form.signature.should == @signature
    end

    describe "iframe url" do
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

  describe "class" do
    before do
      Zuora::Ruby::PaymentForm.api_security_key = @api_security_key
      Zuora::Ruby::PaymentForm.tenant_id = @tenant_id
      @ruby_time = Time.local(2011, 9, 24, 2, 34, 18, 955000)
    end

    describe "creates instance that" do
      before do
        @instance = Zuora::Ruby::PaymentForm.create_payment_form(@id, @timestamp, @token)
      end

      it "should generate example string" do
        @instance.signature_params_str.should == @signature_params_str
      end

      it "should generate example signature" do
        @instance.signature.should == @signature
      end
    end

    describe "token generator" do
      it "will not reuse a fresh token" do
        token = Zuora::Ruby::PaymentForm.create_token
        new_token = "a" * 32
        Zuora::Ruby::PaymentForm.expects(:random_token).twice.returns(token).then.returns(new_token)
        Zuora::Ruby::PaymentForm.create_token.should == new_token
      end

      it "will reuse an old token" do
        token = Zuora::Ruby::PaymentForm.create_token
        Zuora::Ruby::PaymentForm.repository[token] = Time.now - 172900
        Zuora::Ruby::PaymentForm.expects(:random_token).returns(token)
        Zuora::Ruby::PaymentForm.create_token.should == token
      end
    end

    it "should translate from zuora time" do
      Zuora::Ruby::PaymentForm.from_zuora_time(@timestamp).to_f.should == @ruby_time.to_f
    end

    it "should translate from zuora time" do
      Zuora::Ruby::PaymentForm.to_zuora_time(@ruby_time).should == @timestamp
    end

    it "should validate callback response" do
      timestamp = Zuora::Ruby::PaymentForm.to_zuora_time(Time.now - 200)
      instance = Zuora::Ruby::PaymentForm.create_payment_form(@id, timestamp)
      Zuora::Ruby::PaymentForm.validate("id" => @id, "timestamp" => timestamp,
        "token" => instance.token, "signature" => instance.signature).should be_true
    end

    it "should not validate responses over 300 seconds late" do
      timestamp = Zuora::Ruby::PaymentForm.to_zuora_time(Time.now - 400)
      instance = Zuora::Ruby::PaymentForm.create_payment_form(@id, timestamp)
      Zuora::Ruby::PaymentForm.validate("id" => @id, "timestamp" => timestamp,
        "token" => instance.token, "signature" => instance.signature).should_not be_true
    end

    it "should not validate invalid signatures" do
      Zuora::Ruby::PaymentForm.validate("id" => @id, "signature" => "foo", "token" => "bar",
        "timestamp" => Zuora::Ruby::PaymentForm.to_zuora_time(Time.now - 100)).should_not be_true
    end
  end

end