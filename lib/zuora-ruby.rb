require "zuora-ruby/version"

gem "soap4r"
require 'zuora-ruby/ZUORA'
require 'zuora-ruby/ZUORADriver'

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

    # This module describes the basic skeleton for a Zuora model
    module Model

      attr_accessor :fields
      
      # Zuora model name - takes last part of the class name split by ::
      def model_name
        self.name.split(/::/).last
      end

      # Applies conditions to a query and requests the query to zuora
      def query(conditions = nil)
        str = "select #{fields.join(", ")} from #{model_name}"
        str += " where #{conditions}" if conditions
        Api.query(str)
      end

      # Parses the result from a query response into a Hash
      def parse_response(response)
        response.result.records.map{ |r| fields.inject({}){ |hsh, f| hsh.merge(f => r[f]) } }
      end

      def all
        parse_response(query)
      end

      def find(conditions)
        parse_response(query(conditions))
      end

      def find_by_id(id)
        find("Id = #{id}")
      end
    end

    module EffectiveRange
      def effective_at(time)
        str = time.strftime("%Y-%m-%dT%T%z")
        parse_response(query("EffectiveStartDate < '#{str}' and EffectiveEndDate > '#{str}'"))
      end

      def effective
        effective_at(Time.now)
      end
    end

    # Mapping of Zuora models to a list of fields in those models
    ModelFields = {
      "Product"               => %w{Id Name SKU Category Description EffectiveStartDate EffectiveEndDate},
      "ProductRatePlan"       => %w{CreatedById CreatedDate Description EffectiveEndDate EffectiveStartDate 
                                    Id Name ProductId UpdatedById UpdatedDate},
      "ProductRatePlanCharge" => %w{AccountingCode ApplyDiscountTo BillCycleDay BillCycleType BillingPeriod
                                    BillingPeriodAlignment ChargeModel ChargeType CreatedById CreatedDate
                                    DefaultQuantity Description DiscountLevel Id IncludedUnits MaxQuantity
                                    MinQuantity Model Name NumberOfPeriod OverageCalculationOption OverageUnusedUnitsCreditOption
                                    PriceIncreaseOption PriceIncreasePercentage ProductRatePlanId RevRecCode
                                    RevRecTriggerCondition SmoothingModel SpecificBillingPeriod Taxable TaxCode
                                    TriggerEvent Type UOM UpToPeriods UpdatedById UpdatedDate UseDiscountSpecificAccountingCode},
      "Subscription"          => %w{AccountId AncestorAccountId AutoRenew CacelledDate ContractAcceptanceDate
                                    ContractEffectiveDate CreatedById CreatedDate CreatorAccountId
                                    CreatorInvoiceOwnerId Id InitialTerm InvoiceOwnerId InvoiceSeparate Name 
                                    Notes OriginalCreatedDate OriginalId PreviousSubscriptionId RenewalTerm 
                                    ServiceActivationDate Status SubscriptionEndDate SubscriptionStartDate 
                                    TermEndDate TermStartDate TermType UpdatedById UpdatedDate Version VersionCreatedDate},
      "RatePlan"              => %w{AmendmentId AmendmentSubscriptionRatePlanId AmendmentType CreatedById CreatedDate
                                    Name ProductRatePlanId SubscriptionId UpdatedById UpdatedDate}, 
      "RatePlanCharge"        => %w{AccountingCode ApplyDiscountTo BillCycleDay BillCycleType BillingPeriodAlignment
                                    ChargedThroughDate ChargeModel ChargeNumber ChargeType CreatedById CreatedDate
                                    Description DiscountLevel DMRC DTCV EffectiveEndDate EffectiveStartDate IsLastSegment
                                    MRR Name NumberOfPeriods OriginalId OverageCalculationOption 
                                    OverageUnusedUnitsCreditOption Price PriceIncreasePercentage ProcessedThroughDate
                                    ProductRatePlanChargeId Quantity RatePlanId Segment TCV
                                    TriggerDate TriggerEvent UnusedUnitsCreditRates UOM UpdatedById UpdatedDate UpToPeriods 
                                    UsageRecordRatingOption UseDiscountSpecificAccountingCode Version}
    }

    # Dynamically define each zuora model
    ModelFields.each_pair do |class_name, model_fields|
      model_class = Class.new
      model_class.extend(Model)
      model_class.extend(EffectiveRange) if model_fields.include?("EffectiveStartDate") || model_fields.include?("EffectiveEndDate")
      model_class.fields = model_fields
      self.const_set(class_name, model_class)
    end

    # This module is a singleton for to login and persist the SOAP driver for access to the Zuora API
    module Api
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
        @driver.wiredump_dev = logstream
        @driver.headerhandler.set @session

        @session.session = @driver.login(credentials).result.session
      end

      def logged_in?
        !@session.nil? && !@session.session.nil?
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
end
