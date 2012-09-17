require "zuora-ruby/version"

gem "soap4r"
require 'zuora-ruby/ZUORA'
require 'zuora-ruby/ZUORADriver'

require 'zuora-ruby/model'
require 'zuora-ruby/effective_range'
require 'zuora-ruby/api'
require 'zuora-ruby/payment_form'

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

    DATE_TIME_FORMAT = "%Y-%m-%dT%T.000%z"
    DATE_FORMAT = "%Y-%m-%dT%T"


    # Mapping of Zuora models to a list of fields in those models
    ModelFields = {
      "Contact"               => %w{Id AccountId Address1 Address2 City Country County CreatedById CreatedDate
                                    Description FirstName HomePhone LastName MobilePhone NickName OtherPhone
                                    OtherPhoneType PersonalEmail PostalCode State TaxRegion UpdatedById UpdatedDate
                                    WorkEmail WorkPhone},
      "Account"               => %w{Id AccountNumber Balance AutoPay BillCycleDay BillToId CreatedById
                                    CreatedDate CreditBalance Currency DefaultPaymentMethodId InvoiceTemplateId
                                    LastInvoiceDate Name Notes ParentId PaymentGateway PaymentTerm 
                                    PurchaseOrderNumber SoldToId Status TotalInvoiceBalance UpdatedById UpdatedDate},
      "Product"               => %w{Id Name SKU Category Description EffectiveStartDate EffectiveEndDate},
      "ProductRatePlan"       => %w{CreatedById CreatedDate Description EffectiveEndDate EffectiveStartDate 
                                    Id Name ProductId UpdatedById UpdatedDate},
      "ProductRatePlanCharge" => %w{AccountingCode BillCycleDay BillCycleType BillingPeriod
                                    BillingPeriodAlignment ChargeModel ChargeType CreatedById CreatedDate
                                    DefaultQuantity Description Id IncludedUnits MaxQuantity
                                    MinQuantity Name NumberOfPeriod OverageCalculationOption OverageUnusedUnitsCreditOption
                                    PriceIncreaseOption PriceIncreasePercentage ProductRatePlanId RevRecCode
                                    RevRecTriggerCondition SmoothingModel SpecificBillingPeriod Taxable TaxCode
                                    TriggerEvent UOM UpdatedById UpdatedDate UseDiscountSpecificAccountingCode},
      "RatePlan"              => %w{AmendmentId AmendmentSubscriptionRatePlanId AmendmentType CreatedById CreatedDate
                                    Name ProductRatePlanId SubscriptionId UpdatedById UpdatedDate}, 
      "RatePlanCharge"        => %w{AccountingCode ApplyDiscountTo BillCycleDay BillCycleType BillingPeriodAlignment
                                    ChargedThroughDate ChargeModel ChargeNumber ChargeType CreatedById CreatedDate
                                    Description DiscountLevel DMRC DTCV EffectiveEndDate EffectiveStartDate IsLastSegment
                                    MRR Name NumberOfPeriods OriginalId OverageCalculationOption 
                                    OverageUnusedUnitsCreditOption Price PriceIncreasePercentage ProcessedThroughDate
                                    ProductRatePlanChargeId Quantity RatePlanId Segment TCV
                                    TriggerDate TriggerEvent UnusedUnitsCreditRates UOM UpdatedById UpdatedDate UpToPeriods 
                                    UsageRecordRatingOption UseDiscountSpecificAccountingCode Version},
      "Subscription"          => %w{AccountId AutoRenew CancelledDate ContractAcceptanceDate
                                    ContractEffectiveDate CreatedById CreatedDate CreatorAccountId
                                    CreatorInvoiceOwnerId Id InitialTerm InvoiceOwnerId IsInvoiceSeparate Name 
                                    Notes OriginalCreatedDate OriginalId PreviousSubscriptionId RenewalTerm 
                                    ServiceActivationDate Status SubscriptionEndDate SubscriptionStartDate 
                                    TermEndDate TermStartDate TermType UpdatedById UpdatedDate Version}
    }

    # Dynamically define each zuora model
    ModelFields.each_pair do |class_name, model_fields|
      model_class = Class.new
      model_class.extend(Model)
      model_class.extend(EffectiveRange) if model_fields.include?("EffectiveStartDate") || model_fields.include?("EffectiveEndDate")
      model_class.fields = model_fields
      self.const_set(class_name, model_class)
    end

  end
end
