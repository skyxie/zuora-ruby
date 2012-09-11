require 'xsd/qname'

module ZUORA

# {http://api.zuora.com/}login
class Login
  @@schema_type = "login"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["username", "String"], ["password", "String"]]

  attr_accessor :username
  attr_accessor :password

  def initialize(username = nil, password = nil)
    @username = username
    @password = password
  end
end

# {http://api.zuora.com/}loginResponse
class LoginResponse
  @@schema_type = "loginResponse"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["result", "LoginResult"]]

  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://api.zuora.com/}subscribe
class Subscribe
  @@schema_type = "subscribe"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["subscribes", "SubscribeRequest[]"]]

  attr_accessor :subscribes

  def initialize(subscribes = [])
    @subscribes = subscribes
  end
end

# {http://api.zuora.com/}subscribeResponse
class SubscribeResponse
  @@schema_type = "subscribeResponse"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["result", "SubscribeResult[]"]]

  attr_accessor :result

  def initialize(result = [])
    @result = result
  end
end

# {http://api.zuora.com/}create
class Create
  @@schema_type = "create"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["zObjects", "ZObject[]"]]

  attr_accessor :zObjects

  def initialize(zObjects = [])
    @zObjects = zObjects
  end
end

# {http://api.zuora.com/}createResponse
class CreateResponse
  @@schema_type = "createResponse"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["result", "SaveResult[]"]]

  attr_accessor :result

  def initialize(result = [])
    @result = result
  end
end

# {http://api.zuora.com/}generate
class Generate
  @@schema_type = "generate"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["zObjects", "ZObject[]"]]

  attr_accessor :zObjects

  def initialize(zObjects = [])
    @zObjects = zObjects
  end
end

# {http://api.zuora.com/}generateResponse
class GenerateResponse
  @@schema_type = "generateResponse"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["result", "SaveResult[]"]]

  attr_accessor :result

  def initialize(result = [])
    @result = result
  end
end

# {http://api.zuora.com/}update
class Update
  @@schema_type = "update"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["zObjects", "ZObject[]"]]

  attr_accessor :zObjects

  def initialize(zObjects = [])
    @zObjects = zObjects
  end
end

# {http://api.zuora.com/}updateResponse
class UpdateResponse
  @@schema_type = "updateResponse"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["result", "SaveResult[]"]]

  attr_accessor :result

  def initialize(result = [])
    @result = result
  end
end

# {http://api.zuora.com/}delete
class Delete
  @@schema_type = "delete"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["type", "String"], ["ids", "SOAP::SOAPString[]"]]

  attr_accessor :type
  attr_accessor :ids

  def initialize(type = nil, ids = [])
    @type = type
    @ids = ids
  end
end

# {http://api.zuora.com/}deleteResponse
class DeleteResponse
  @@schema_type = "deleteResponse"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["result", "DeleteResult[]"]]

  attr_accessor :result

  def initialize(result = [])
    @result = result
  end
end

# {http://api.zuora.com/}execute
class Execute
  @@schema_type = "execute"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["type", "String"], ["synchronous", "Boolean"], ["ids", "SOAP::SOAPString[]"]]

  attr_accessor :type
  attr_accessor :synchronous
  attr_accessor :ids

  def initialize(type = nil, synchronous = nil, ids = [])
    @type = type
    @synchronous = synchronous
    @ids = ids
  end
end

# {http://api.zuora.com/}executeResponse
class ExecuteResponse
  @@schema_type = "executeResponse"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["result", "ExecuteResult[]"]]

  attr_accessor :result

  def initialize(result = [])
    @result = result
  end
end

# {http://api.zuora.com/}query
class Query
  @@schema_type = "query"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["queryString", "SOAP::SOAPString"]]

  attr_accessor :queryString

  def initialize(queryString = nil)
    @queryString = queryString
  end
end

# {http://api.zuora.com/}queryResponse
class QueryResponse
  @@schema_type = "queryResponse"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["result", "QueryResult"]]

  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://api.zuora.com/}queryMore
class QueryMore
  @@schema_type = "queryMore"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["queryLocator", "SOAP::SOAPString"]]

  attr_accessor :queryLocator

  def initialize(queryLocator = nil)
    @queryLocator = queryLocator
  end
end

# {http://api.zuora.com/}queryMoreResponse
class QueryMoreResponse
  @@schema_type = "queryMoreResponse"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["result", "QueryResult"]]

  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://api.zuora.com/}SessionHeader
class SessionHeader
  @@schema_type = "SessionHeader"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["session", "String"]]

  attr_accessor :session

  def initialize(session = nil)
    @session = session
  end
    
  def on_outbound_headeritem(test)
    sobj = SOAP::SOAPElement.new(XSD::QName.new("ns1", 'SessionHeader'))
    sobj.add(SOAP::SOAPElement.new(XSD::QName.new("ns1", "session"), @session))
    ::SOAP::SOAPHeaderItem.new(sobj, false)
  end
end

# {http://api.zuora.com/}QueryOptions
class QueryOptions
  @@schema_type = "QueryOptions"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["batchSize", "Int"], ["caseSensitive", "Boolean"]]

  attr_accessor :batchSize
  attr_accessor :caseSensitive

  def initialize(batchSize = nil, caseSensitive = nil)
    @batchSize = batchSize
    @caseSensitive = caseSensitive
  end
end

# {http://api.zuora.com/}getUserInfoResponse
class GetUserInfoResponse
  @@schema_type = "getUserInfoResponse"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["tenantId", ["String", XSD::QName.new("http://api.zuora.com/", "TenantId")]], ["tenantName", ["String", XSD::QName.new("http://api.zuora.com/", "TenantName")]], ["userEmail", ["String", XSD::QName.new("http://api.zuora.com/", "UserEmail")]], ["userFullName", ["String", XSD::QName.new("http://api.zuora.com/", "UserFullName")]], ["userId", ["String", XSD::QName.new("http://api.zuora.com/", "UserId")]], ["username", ["String", XSD::QName.new("http://api.zuora.com/", "Username")]]]

  def TenantId
    @tenantId
  end

  def TenantId=(value)
    @tenantId = value
  end

  def TenantName
    @tenantName
  end

  def TenantName=(value)
    @tenantName = value
  end

  def UserEmail
    @userEmail
  end

  def UserEmail=(value)
    @userEmail = value
  end

  def UserFullName
    @userFullName
  end

  def UserFullName=(value)
    @userFullName = value
  end

  def UserId
    @userId
  end

  def UserId=(value)
    @userId = value
  end

  def Username
    @username
  end

  def Username=(value)
    @username = value
  end

  def initialize(tenantId = nil, tenantName = nil, userEmail = nil, userFullName = nil, userId = nil, username = nil)
    @tenantId = tenantId
    @tenantName = tenantName
    @userEmail = userEmail
    @userFullName = userFullName
    @userId = userId
    @username = username
  end
end

# {http://api.zuora.com/}getUserInfo
class GetUserInfo
  @@schema_type = "getUserInfo"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {http://api.zuora.com/}DummyHeader
class DummyHeader
  @@schema_type = "DummyHeader"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["account", ["Account", XSD::QName.new("http://api.zuora.com/", "Account")]], ["invoiceAdjustment", ["InvoiceAdjustment", XSD::QName.new("http://api.zuora.com/", "InvoiceAdjustment")]], ["amendment", ["Amendment", XSD::QName.new("http://api.zuora.com/", "Amendment")]], ["invoice", ["Invoice", XSD::QName.new("http://api.zuora.com/", "Invoice")]], ["invoiceItem", ["InvoiceItem", XSD::QName.new("http://api.zuora.com/", "InvoiceItem")]], ["invoicePayment", ["InvoicePayment", XSD::QName.new("http://api.zuora.com/", "InvoicePayment")]], ["import", ["Import", XSD::QName.new("http://api.zuora.com/", "Import")]], ["payment", ["Payment", XSD::QName.new("http://api.zuora.com/", "Payment")]], ["product", ["Product", XSD::QName.new("http://api.zuora.com/", "Product")]], ["productRatePlan", ["ProductRatePlan", XSD::QName.new("http://api.zuora.com/", "ProductRatePlan")]], ["productRatePlanCharge", ["ProductRatePlanCharge", XSD::QName.new("http://api.zuora.com/", "ProductRatePlanCharge")]], ["productRatePlanChargeTier", ["ProductRatePlanChargeTier", XSD::QName.new("http://api.zuora.com/", "ProductRatePlanChargeTier")]], ["ratePlan", ["RatePlan", XSD::QName.new("http://api.zuora.com/", "RatePlan")]], ["ratePlanCharge", ["RatePlanCharge", XSD::QName.new("http://api.zuora.com/", "RatePlanCharge")]], ["ratePlanChargeTier", ["RatePlanChargeTier", XSD::QName.new("http://api.zuora.com/", "RatePlanChargeTier")]], ["taxationItem", ["TaxationItem", XSD::QName.new("http://api.zuora.com/", "TaxationItem")]], ["usage", ["Usage", XSD::QName.new("http://api.zuora.com/", "Usage")]], ["refund", ["Refund", XSD::QName.new("http://api.zuora.com/", "Refund")]], ["refundInvoicePayment", ["RefundInvoicePayment", XSD::QName.new("http://api.zuora.com/", "RefundInvoicePayment")]], ["creditBalanceAdjustment", ["CreditBalanceAdjustment", XSD::QName.new("http://api.zuora.com/", "CreditBalanceAdjustment")]], ["export", ["Export", XSD::QName.new("http://api.zuora.com/", "Export")]], ["invoiceItemAdjustment", ["InvoiceItemAdjustment", XSD::QName.new("http://api.zuora.com/", "InvoiceItemAdjustment")]], ["communicationProfile", ["CommunicationProfile", XSD::QName.new("http://api.zuora.com/", "CommunicationProfile")]]]

  def Account
    @account
  end

  def Account=(value)
    @account = value
  end

  def InvoiceAdjustment
    @invoiceAdjustment
  end

  def InvoiceAdjustment=(value)
    @invoiceAdjustment = value
  end

  def Amendment
    @amendment
  end

  def Amendment=(value)
    @amendment = value
  end

  def Invoice
    @invoice
  end

  def Invoice=(value)
    @invoice = value
  end

  def InvoiceItem
    @invoiceItem
  end

  def InvoiceItem=(value)
    @invoiceItem = value
  end

  def InvoicePayment
    @invoicePayment
  end

  def InvoicePayment=(value)
    @invoicePayment = value
  end

  def Import
    @import
  end

  def Import=(value)
    @import = value
  end

  def Payment
    @payment
  end

  def Payment=(value)
    @payment = value
  end

  def Product
    @product
  end

  def Product=(value)
    @product = value
  end

  def ProductRatePlan
    @productRatePlan
  end

  def ProductRatePlan=(value)
    @productRatePlan = value
  end

  def ProductRatePlanCharge
    @productRatePlanCharge
  end

  def ProductRatePlanCharge=(value)
    @productRatePlanCharge = value
  end

  def ProductRatePlanChargeTier
    @productRatePlanChargeTier
  end

  def ProductRatePlanChargeTier=(value)
    @productRatePlanChargeTier = value
  end

  def RatePlan
    @ratePlan
  end

  def RatePlan=(value)
    @ratePlan = value
  end

  def RatePlanCharge
    @ratePlanCharge
  end

  def RatePlanCharge=(value)
    @ratePlanCharge = value
  end

  def RatePlanChargeTier
    @ratePlanChargeTier
  end

  def RatePlanChargeTier=(value)
    @ratePlanChargeTier = value
  end

  def TaxationItem
    @taxationItem
  end

  def TaxationItem=(value)
    @taxationItem = value
  end

  def Usage
    @usage
  end

  def Usage=(value)
    @usage = value
  end

  def Refund
    @refund
  end

  def Refund=(value)
    @refund = value
  end

  def RefundInvoicePayment
    @refundInvoicePayment
  end

  def RefundInvoicePayment=(value)
    @refundInvoicePayment = value
  end

  def CreditBalanceAdjustment
    @creditBalanceAdjustment
  end

  def CreditBalanceAdjustment=(value)
    @creditBalanceAdjustment = value
  end

  def Export
    @export
  end

  def Export=(value)
    @export = value
  end

  def InvoiceItemAdjustment
    @invoiceItemAdjustment
  end

  def InvoiceItemAdjustment=(value)
    @invoiceItemAdjustment = value
  end

  def CommunicationProfile
    @communicationProfile
  end

  def CommunicationProfile=(value)
    @communicationProfile = value
  end

  def initialize(account = nil, invoiceAdjustment = nil, amendment = nil, invoice = nil, invoiceItem = nil, invoicePayment = nil, import = nil, payment = nil, product = nil, productRatePlan = nil, productRatePlanCharge = nil, productRatePlanChargeTier = nil, ratePlan = nil, ratePlanCharge = nil, ratePlanChargeTier = nil, taxationItem = nil, usage = nil, refund = nil, refundInvoicePayment = nil, creditBalanceAdjustment = nil, export = nil, invoiceItemAdjustment = nil, communicationProfile = nil)
    @account = account
    @invoiceAdjustment = invoiceAdjustment
    @amendment = amendment
    @invoice = invoice
    @invoiceItem = invoiceItem
    @invoicePayment = invoicePayment
    @import = import
    @payment = payment
    @product = product
    @productRatePlan = productRatePlan
    @productRatePlanCharge = productRatePlanCharge
    @productRatePlanChargeTier = productRatePlanChargeTier
    @ratePlan = ratePlan
    @ratePlanCharge = ratePlanCharge
    @ratePlanChargeTier = ratePlanChargeTier
    @taxationItem = taxationItem
    @usage = usage
    @refund = refund
    @refundInvoicePayment = refundInvoicePayment
    @creditBalanceAdjustment = creditBalanceAdjustment
    @export = export
    @invoiceItemAdjustment = invoiceItemAdjustment
    @communicationProfile = communicationProfile
  end
end

# {http://api.zuora.com/}CallOptions
class CallOptions
  @@schema_type = "CallOptions"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["useSingleTransaction", "Boolean"]]

  attr_accessor :useSingleTransaction

  def initialize(useSingleTransaction = nil)
    @useSingleTransaction = useSingleTransaction
  end
end

# {http://api.zuora.com/}amend
class Amend
  @@schema_type = "amend"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["requests", "AmendRequest[]"]]

  attr_accessor :requests

  def initialize(requests = [])
    @requests = requests
  end
end

# {http://api.zuora.com/}amendResponse
class AmendResponse
  @@schema_type = "amendResponse"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_qualified = "true"
  @@schema_element = [["results", "AmendResult[]"]]

  attr_accessor :results

  def initialize(results = [])
    @results = results
  end
end

# {http://object.api.zuora.com/}zObject
class ZObject
  @@schema_type = "zObject"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = [["fieldsToNull", "String[]"], ["id", ["SOAP::SOAPString", XSD::QName.new("http://object.api.zuora.com/", "Id")]]]

  attr_accessor :fieldsToNull

  def Id
    @id
  end

  def Id=(value)
    @id = value
  end

  def initialize(fieldsToNull = [], id = nil)
    @fieldsToNull = fieldsToNull
    @id = id
  end
end

# {http://object.api.zuora.com/}Account
class Account
  @@schema_type = "Account"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}InvoiceAdjustment
class InvoiceAdjustment
  @@schema_type = "InvoiceAdjustment"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}InvoiceItemAdjustment
class InvoiceItemAdjustment
  @@schema_type = "InvoiceItemAdjustment"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}Amendment
class Amendment
  @@schema_type = "Amendment"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}Contact
class Contact
  @@schema_type = "Contact"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}Invoice
class Invoice
  @@schema_type = "Invoice"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}Refund
class Refund
  @@schema_type = "Refund"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}RefundInvoicePayment
class RefundInvoicePayment
  @@schema_type = "RefundInvoicePayment"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}RefundTransactionLog
class RefundTransactionLog
  @@schema_type = "RefundTransactionLog"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}InvoiceItem
class InvoiceItem
  @@schema_type = "InvoiceItem"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}InvoicePayment
class InvoicePayment
  @@schema_type = "InvoicePayment"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}Payment
class Payment
  @@schema_type = "Payment"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}PaymentTransactionLog
class PaymentTransactionLog
  @@schema_type = "PaymentTransactionLog"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}PaymentMethod
class PaymentMethod
  @@schema_type = "PaymentMethod"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}Product
class Product
  @@schema_type = "Product"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}ProductRatePlan
class ProductRatePlan
  @@schema_type = "ProductRatePlan"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}ProductRatePlanCharge
class ProductRatePlanCharge
  @@schema_type = "ProductRatePlanCharge"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}ProductRatePlanChargeTier
class ProductRatePlanChargeTier
  @@schema_type = "ProductRatePlanChargeTier"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}GatewayOption
class GatewayOption
  @@schema_type = "GatewayOption"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}RatePlan
class RatePlan
  @@schema_type = "RatePlan"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}RatePlanCharge
class RatePlanCharge
  @@schema_type = "RatePlanCharge"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}RatePlanChargeTier
class RatePlanChargeTier
  @@schema_type = "RatePlanChargeTier"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}Subscription
class Subscription
  @@schema_type = "Subscription"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}TaxationItem
class TaxationItem
  @@schema_type = "TaxationItem"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}Usage
class Usage
  @@schema_type = "Usage"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}Import
class Import
  @@schema_type = "Import"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}CreditBalanceAdjustment
class CreditBalanceAdjustment
  @@schema_type = "CreditBalanceAdjustment"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}Export
class Export
  @@schema_type = "Export"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://object.api.zuora.com/}CommunicationProfile
class CommunicationProfile
  @@schema_type = "CommunicationProfile"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://api.zuora.com/}LoginResult
class LoginResult
  @@schema_type = "LoginResult"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["session", ["SOAP::SOAPString", XSD::QName.new("http://api.zuora.com/", "Session")]], ["serverUrl", ["SOAP::SOAPString", XSD::QName.new("http://api.zuora.com/", "ServerUrl")]]]

  def Session
    @session
  end

  def Session=(value)
    @session = value
  end

  def ServerUrl
    @serverUrl
  end

  def ServerUrl=(value)
    @serverUrl = value
  end

  def initialize(session = nil, serverUrl = nil)
    @session = session
    @serverUrl = serverUrl
  end
end

# {http://api.zuora.com/}SubscribeRequest
class SubscribeRequest
  @@schema_type = "SubscribeRequest"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["account", ["Account", XSD::QName.new("http://api.zuora.com/", "Account")]], ["paymentMethod", ["PaymentMethod", XSD::QName.new("http://api.zuora.com/", "PaymentMethod")]], ["billToContact", ["Contact", XSD::QName.new("http://api.zuora.com/", "BillToContact")]], ["previewOptions", ["PreviewOptions", XSD::QName.new("http://api.zuora.com/", "PreviewOptions")]], ["soldToContact", ["Contact", XSD::QName.new("http://api.zuora.com/", "SoldToContact")]], ["subscribeOptions", ["SubscribeOptions", XSD::QName.new("http://api.zuora.com/", "SubscribeOptions")]], ["subscriptionData", ["SubscriptionData", XSD::QName.new("http://api.zuora.com/", "SubscriptionData")]]]

  def Account
    @account
  end

  def Account=(value)
    @account = value
  end

  def PaymentMethod
    @paymentMethod
  end

  def PaymentMethod=(value)
    @paymentMethod = value
  end

  def BillToContact
    @billToContact
  end

  def BillToContact=(value)
    @billToContact = value
  end

  def PreviewOptions
    @previewOptions
  end

  def PreviewOptions=(value)
    @previewOptions = value
  end

  def SoldToContact
    @soldToContact
  end

  def SoldToContact=(value)
    @soldToContact = value
  end

  def SubscribeOptions
    @subscribeOptions
  end

  def SubscribeOptions=(value)
    @subscribeOptions = value
  end

  def SubscriptionData
    @subscriptionData
  end

  def SubscriptionData=(value)
    @subscriptionData = value
  end

  def initialize(account = nil, paymentMethod = nil, billToContact = nil, previewOptions = nil, soldToContact = nil, subscribeOptions = nil, subscriptionData = nil)
    @account = account
    @paymentMethod = paymentMethod
    @billToContact = billToContact
    @previewOptions = previewOptions
    @soldToContact = soldToContact
    @subscribeOptions = subscribeOptions
    @subscriptionData = subscriptionData
  end
end

# {http://api.zuora.com/}SubscribeOptions
class SubscribeOptions
  @@schema_type = "SubscribeOptions"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["generateInvoice", ["SOAP::SOAPBoolean", XSD::QName.new("http://api.zuora.com/", "GenerateInvoice")]], ["processPayments", ["SOAP::SOAPBoolean", XSD::QName.new("http://api.zuora.com/", "ProcessPayments")]], ["subscribeInvoiceProcessingOptions", ["SubscribeInvoiceProcessingOptions", XSD::QName.new("http://api.zuora.com/", "SubscribeInvoiceProcessingOptions")]]]

  def GenerateInvoice
    @generateInvoice
  end

  def GenerateInvoice=(value)
    @generateInvoice = value
  end

  def ProcessPayments
    @processPayments
  end

  def ProcessPayments=(value)
    @processPayments = value
  end

  def SubscribeInvoiceProcessingOptions
    @subscribeInvoiceProcessingOptions
  end

  def SubscribeInvoiceProcessingOptions=(value)
    @subscribeInvoiceProcessingOptions = value
  end

  def initialize(generateInvoice = nil, processPayments = nil, subscribeInvoiceProcessingOptions = nil)
    @generateInvoice = generateInvoice
    @processPayments = processPayments
    @subscribeInvoiceProcessingOptions = subscribeInvoiceProcessingOptions
  end
end

# {http://api.zuora.com/}SubscribeInvoiceProcessingOptions
class SubscribeInvoiceProcessingOptions
  @@schema_type = "SubscribeInvoiceProcessingOptions"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["invoiceProcessingScope", ["SOAP::SOAPString", XSD::QName.new("http://api.zuora.com/", "InvoiceProcessingScope")]]]

  def InvoiceProcessingScope
    @invoiceProcessingScope
  end

  def InvoiceProcessingScope=(value)
    @invoiceProcessingScope = value
  end

  def initialize(invoiceProcessingScope = nil)
    @invoiceProcessingScope = invoiceProcessingScope
  end
end

# {http://api.zuora.com/}SubscriptionData
class SubscriptionData
  @@schema_type = "SubscriptionData"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["subscription", ["Subscription", XSD::QName.new("http://api.zuora.com/", "Subscription")]], ["ratePlanData", ["RatePlanData[]", XSD::QName.new("http://api.zuora.com/", "RatePlanData")]]]

  def Subscription
    @subscription
  end

  def Subscription=(value)
    @subscription = value
  end

  def RatePlanData
    @ratePlanData
  end

  def RatePlanData=(value)
    @ratePlanData = value
  end

  def initialize(subscription = nil, ratePlanData = [])
    @subscription = subscription
    @ratePlanData = ratePlanData
  end
end

# {http://api.zuora.com/}RatePlanData
class RatePlanData
  @@schema_type = "RatePlanData"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["ratePlan", ["RatePlan", XSD::QName.new("http://api.zuora.com/", "RatePlan")]], ["ratePlanChargeData", ["RatePlanChargeData[]", XSD::QName.new("http://api.zuora.com/", "RatePlanChargeData")]]]

  def RatePlan
    @ratePlan
  end

  def RatePlan=(value)
    @ratePlan = value
  end

  def RatePlanChargeData
    @ratePlanChargeData
  end

  def RatePlanChargeData=(value)
    @ratePlanChargeData = value
  end

  def initialize(ratePlan = nil, ratePlanChargeData = [])
    @ratePlan = ratePlan
    @ratePlanChargeData = ratePlanChargeData
  end
end

# {http://api.zuora.com/}RatePlanChargeData
class RatePlanChargeData
  @@schema_type = "RatePlanChargeData"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["ratePlanCharge", ["RatePlanCharge", XSD::QName.new("http://api.zuora.com/", "RatePlanCharge")]], ["ratePlanChargeTier", ["RatePlanChargeTier[]", XSD::QName.new("http://api.zuora.com/", "RatePlanChargeTier")]]]

  def RatePlanCharge
    @ratePlanCharge
  end

  def RatePlanCharge=(value)
    @ratePlanCharge = value
  end

  def RatePlanChargeTier
    @ratePlanChargeTier
  end

  def RatePlanChargeTier=(value)
    @ratePlanChargeTier = value
  end

  def initialize(ratePlanCharge = nil, ratePlanChargeTier = [])
    @ratePlanCharge = ratePlanCharge
    @ratePlanChargeTier = ratePlanChargeTier
  end
end

# {http://api.zuora.com/}ProductRatePlanChargeTierData
class ProductRatePlanChargeTierData < ::Array
  @@schema_type = "ProductRatePlanChargeTier"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = [["ProductRatePlanChargeTier", ["ProductRatePlanChargeTier[]", XSD::QName.new("http://api.zuora.com/", "ProductRatePlanChargeTier")]]]
end

# {http://api.zuora.com/}GatewayOptionData
class GatewayOptionData < ::Array
  @@schema_type = "GatewayOption"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = [["GatewayOption", ["GatewayOption[]", XSD::QName.new("http://api.zuora.com/", "GatewayOption")]]]
end

# {http://api.zuora.com/}InvoiceData
class InvoiceData
  @@schema_type = "InvoiceData"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["invoice", ["Invoice", XSD::QName.new("http://api.zuora.com/", "Invoice")]], ["invoiceItem", ["InvoiceItem[]", XSD::QName.new("http://api.zuora.com/", "InvoiceItem")]]]

  def Invoice
    @invoice
  end

  def Invoice=(value)
    @invoice = value
  end

  def InvoiceItem
    @invoiceItem
  end

  def InvoiceItem=(value)
    @invoiceItem = value
  end

  def initialize(invoice = nil, invoiceItem = [])
    @invoice = invoice
    @invoiceItem = invoiceItem
  end
end

# {http://api.zuora.com/}InvoiceResult
class InvoiceResult < ::Array
  @@schema_type = "Invoice"
  @@schema_ns = "http://object.api.zuora.com/"
  @@schema_element = [["Invoice", ["Invoice[]", XSD::QName.new("http://api.zuora.com/", "Invoice")]]]
end

# {http://api.zuora.com/}PreviewOptions
class PreviewOptions
  @@schema_type = "PreviewOptions"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["enablePreviewMode", ["Boolean", XSD::QName.new("http://api.zuora.com/", "EnablePreviewMode")]], ["numberOfPeriods", ["Int", XSD::QName.new("http://api.zuora.com/", "NumberOfPeriods")]]]

  def EnablePreviewMode
    @enablePreviewMode
  end

  def EnablePreviewMode=(value)
    @enablePreviewMode = value
  end

  def NumberOfPeriods
    @numberOfPeriods
  end

  def NumberOfPeriods=(value)
    @numberOfPeriods = value
  end

  def initialize(enablePreviewMode = nil, numberOfPeriods = nil)
    @enablePreviewMode = enablePreviewMode
    @numberOfPeriods = numberOfPeriods
  end
end

# {http://api.zuora.com/}SubscribeResult
class SubscribeResult
  @@schema_type = "SubscribeResult"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["accountId", ["SOAP::SOAPString", XSD::QName.new("http://api.zuora.com/", "AccountId")]], ["accountNumber", ["String", XSD::QName.new("http://api.zuora.com/", "AccountNumber")]], ["errors", ["Error[]", XSD::QName.new("http://api.zuora.com/", "Errors")]], ["invoiceData", ["InvoiceData[]", XSD::QName.new("http://api.zuora.com/", "InvoiceData")]], ["invoiceId", ["SOAP::SOAPString", XSD::QName.new("http://api.zuora.com/", "InvoiceId")]], ["invoiceNumber", ["String", XSD::QName.new("http://api.zuora.com/", "InvoiceNumber")]], ["invoiceResult", ["InvoiceResult", XSD::QName.new("http://api.zuora.com/", "InvoiceResult")]], ["paymentTransactionNumber", ["String", XSD::QName.new("http://api.zuora.com/", "PaymentTransactionNumber")]], ["subscriptionId", ["SOAP::SOAPString", XSD::QName.new("http://api.zuora.com/", "SubscriptionId")]], ["subscriptionNumber", ["String", XSD::QName.new("http://api.zuora.com/", "SubscriptionNumber")]], ["success", ["Boolean", XSD::QName.new("http://api.zuora.com/", "Success")]]]

  def AccountId
    @accountId
  end

  def AccountId=(value)
    @accountId = value
  end

  def AccountNumber
    @accountNumber
  end

  def AccountNumber=(value)
    @accountNumber = value
  end

  def Errors
    @errors
  end

  def Errors=(value)
    @errors = value
  end

  def InvoiceData
    @invoiceData
  end

  def InvoiceData=(value)
    @invoiceData = value
  end

  def InvoiceId
    @invoiceId
  end

  def InvoiceId=(value)
    @invoiceId = value
  end

  def InvoiceNumber
    @invoiceNumber
  end

  def InvoiceNumber=(value)
    @invoiceNumber = value
  end

  def InvoiceResult
    @invoiceResult
  end

  def InvoiceResult=(value)
    @invoiceResult = value
  end

  def PaymentTransactionNumber
    @paymentTransactionNumber
  end

  def PaymentTransactionNumber=(value)
    @paymentTransactionNumber = value
  end

  def SubscriptionId
    @subscriptionId
  end

  def SubscriptionId=(value)
    @subscriptionId = value
  end

  def SubscriptionNumber
    @subscriptionNumber
  end

  def SubscriptionNumber=(value)
    @subscriptionNumber = value
  end

  def Success
    @success
  end

  def Success=(value)
    @success = value
  end

  def initialize(accountId = nil, accountNumber = nil, errors = [], invoiceData = [], invoiceId = nil, invoiceNumber = nil, invoiceResult = nil, paymentTransactionNumber = nil, subscriptionId = nil, subscriptionNumber = nil, success = nil)
    @accountId = accountId
    @accountNumber = accountNumber
    @errors = errors
    @invoiceData = invoiceData
    @invoiceId = invoiceId
    @invoiceNumber = invoiceNumber
    @invoiceResult = invoiceResult
    @paymentTransactionNumber = paymentTransactionNumber
    @subscriptionId = subscriptionId
    @subscriptionNumber = subscriptionNumber
    @success = success
  end
end

# {http://api.zuora.com/}SaveResult
class SaveResult
  @@schema_type = "SaveResult"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["errors", ["Error[]", XSD::QName.new("http://api.zuora.com/", "Errors")]], ["id", ["SOAP::SOAPString", XSD::QName.new("http://api.zuora.com/", "Id")]], ["success", ["Boolean", XSD::QName.new("http://api.zuora.com/", "Success")]]]

  def Errors
    @errors
  end

  def Errors=(value)
    @errors = value
  end

  def Id
    @id
  end

  def Id=(value)
    @id = value
  end

  def Success
    @success
  end

  def Success=(value)
    @success = value
  end

  def initialize(errors = [], id = nil, success = nil)
    @errors = errors
    @id = id
    @success = success
  end
end

# {http://api.zuora.com/}DeleteResult
class DeleteResult
  @@schema_type = "DeleteResult"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["errors", "Error[]"], ["id", "SOAP::SOAPString"], ["success", "Boolean"]]

  attr_accessor :errors
  attr_accessor :id
  attr_accessor :success

  def initialize(errors = [], id = nil, success = nil)
    @errors = errors
    @id = id
    @success = success
  end
end

# {http://api.zuora.com/}ExecuteResult
class ExecuteResult
  @@schema_type = "ExecuteResult"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["errors", ["Error[]", XSD::QName.new("http://api.zuora.com/", "Errors")]], ["id", ["SOAP::SOAPString", XSD::QName.new("http://api.zuora.com/", "Id")]], ["success", ["Boolean", XSD::QName.new("http://api.zuora.com/", "Success")]]]

  def Errors
    @errors
  end

  def Errors=(value)
    @errors = value
  end

  def Id
    @id
  end

  def Id=(value)
    @id = value
  end

  def Success
    @success
  end

  def Success=(value)
    @success = value
  end

  def initialize(errors = [], id = nil, success = nil)
    @errors = errors
    @id = id
    @success = success
  end
end

# {http://api.zuora.com/}QueryResult
class QueryResult
  @@schema_type = "QueryResult"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["done", "SOAP::SOAPBoolean"], ["queryLocator", "SOAP::SOAPString"], ["records", "ZObject[]"], ["size", "SOAP::SOAPInt"]]

  attr_accessor :done
  attr_accessor :queryLocator
  attr_accessor :records
  attr_accessor :size

  def initialize(done = nil, queryLocator = nil, records = [], size = nil)
    @done = done
    @queryLocator = queryLocator
    @records = records
    @size = size
  end
end

# {http://api.zuora.com/}Error
class Error
  @@schema_type = "Error"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["code", ["SOAP::SOAPString", XSD::QName.new("http://api.zuora.com/", "Code")]], ["message", ["String", XSD::QName.new("http://api.zuora.com/", "Message")]], ["field", ["String", XSD::QName.new("http://api.zuora.com/", "Field")]]]

  def Code
    @code
  end

  def Code=(value)
    @code = value
  end

  def Message
    @message
  end

  def Message=(value)
    @message = value
  end

  def Field
    @field
  end

  def Field=(value)
    @field = value
  end

  def initialize(code = nil, message = nil, field = nil)
    @code = code
    @message = message
    @field = field
  end
end

# {http://api.zuora.com/}InvoiceProcessingOptions
class InvoiceProcessingOptions
  @@schema_type = "InvoiceProcessingOptions"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["invoiceTargetDate", ["DateTime", XSD::QName.new("http://api.zuora.com/", "InvoiceTargetDate")]]]

  def InvoiceTargetDate
    @invoiceTargetDate
  end

  def InvoiceTargetDate=(value)
    @invoiceTargetDate = value
  end

  def initialize(invoiceTargetDate = nil)
    @invoiceTargetDate = invoiceTargetDate
  end
end

# {http://api.zuora.com/}AmendOptions
class AmendOptions
  @@schema_type = "AmendOptions"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["generateInvoice", ["SOAP::SOAPBoolean", XSD::QName.new("http://api.zuora.com/", "GenerateInvoice")]], ["invoiceProcessingOptions", ["InvoiceProcessingOptions", XSD::QName.new("http://api.zuora.com/", "InvoiceProcessingOptions")]], ["processPayments", ["SOAP::SOAPBoolean", XSD::QName.new("http://api.zuora.com/", "ProcessPayments")]]]

  def GenerateInvoice
    @generateInvoice
  end

  def GenerateInvoice=(value)
    @generateInvoice = value
  end

  def InvoiceProcessingOptions
    @invoiceProcessingOptions
  end

  def InvoiceProcessingOptions=(value)
    @invoiceProcessingOptions = value
  end

  def ProcessPayments
    @processPayments
  end

  def ProcessPayments=(value)
    @processPayments = value
  end

  def initialize(generateInvoice = nil, invoiceProcessingOptions = nil, processPayments = nil)
    @generateInvoice = generateInvoice
    @invoiceProcessingOptions = invoiceProcessingOptions
    @processPayments = processPayments
  end
end

# {http://api.zuora.com/}AmendRequest
class AmendRequest
  @@schema_type = "AmendRequest"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["amendments", ["Amendment[]", XSD::QName.new("http://api.zuora.com/", "Amendments")]], ["amendOptions", ["AmendOptions", XSD::QName.new("http://api.zuora.com/", "AmendOptions")]], ["previewOptions", ["PreviewOptions", XSD::QName.new("http://api.zuora.com/", "PreviewOptions")]]]

  def Amendments
    @amendments
  end

  def Amendments=(value)
    @amendments = value
  end

  def AmendOptions
    @amendOptions
  end

  def AmendOptions=(value)
    @amendOptions = value
  end

  def PreviewOptions
    @previewOptions
  end

  def PreviewOptions=(value)
    @previewOptions = value
  end

  def initialize(amendments = [], amendOptions = nil, previewOptions = nil)
    @amendments = amendments
    @amendOptions = amendOptions
    @previewOptions = previewOptions
  end
end

# {http://api.zuora.com/}AmendResult
class AmendResult
  @@schema_type = "AmendResult"
  @@schema_ns = "http://api.zuora.com/"
  @@schema_element = [["amendmentIds", ["SOAP::SOAPString[]", XSD::QName.new("http://api.zuora.com/", "AmendmentIds")]], ["errors", ["Error[]", XSD::QName.new("http://api.zuora.com/", "Errors")]], ["invoiceDatas", ["InvoiceData[]", XSD::QName.new("http://api.zuora.com/", "InvoiceDatas")]], ["invoiceId", ["SOAP::SOAPString", XSD::QName.new("http://api.zuora.com/", "InvoiceId")]], ["paymentTransactionNumber", ["String", XSD::QName.new("http://api.zuora.com/", "PaymentTransactionNumber")]], ["success", ["Boolean", XSD::QName.new("http://api.zuora.com/", "Success")]]]

  def AmendmentIds
    @amendmentIds
  end

  def AmendmentIds=(value)
    @amendmentIds = value
  end

  def Errors
    @errors
  end

  def Errors=(value)
    @errors = value
  end

  def InvoiceDatas
    @invoiceDatas
  end

  def InvoiceDatas=(value)
    @invoiceDatas = value
  end

  def InvoiceId
    @invoiceId
  end

  def InvoiceId=(value)
    @invoiceId = value
  end

  def PaymentTransactionNumber
    @paymentTransactionNumber
  end

  def PaymentTransactionNumber=(value)
    @paymentTransactionNumber = value
  end

  def Success
    @success
  end

  def Success=(value)
    @success = value
  end

  def initialize(amendmentIds = [], errors = [], invoiceDatas = [], invoiceId = nil, paymentTransactionNumber = nil, success = nil)
    @amendmentIds = amendmentIds
    @errors = errors
    @invoiceDatas = invoiceDatas
    @invoiceId = invoiceId
    @paymentTransactionNumber = paymentTransactionNumber
    @success = success
  end
end

# {http://fault.api.zuora.com/}ApiFault
class ApiFault
  @@schema_type = "ApiFault"
  @@schema_ns = "http://fault.api.zuora.com/"
  @@schema_element = [["faultCode", ["SOAP::SOAPString", XSD::QName.new("http://fault.api.zuora.com/", "FaultCode")]], ["faultMessage", ["String", XSD::QName.new("http://fault.api.zuora.com/", "FaultMessage")]]]

  def FaultCode
    @faultCode
  end

  def FaultCode=(value)
    @faultCode = value
  end

  def FaultMessage
    @faultMessage
  end

  def FaultMessage=(value)
    @faultMessage = value
  end

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://fault.api.zuora.com/}LoginFault
class LoginFault
  @@schema_type = "LoginFault"
  @@schema_ns = "http://fault.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://fault.api.zuora.com/}InvalidTypeFault
class InvalidTypeFault
  @@schema_type = "InvalidTypeFault"
  @@schema_ns = "http://fault.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://fault.api.zuora.com/}InvalidValueFault
class InvalidValueFault
  @@schema_type = "InvalidValueFault"
  @@schema_ns = "http://fault.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://fault.api.zuora.com/}MalformedQueryFault
class MalformedQueryFault
  @@schema_type = "MalformedQueryFault"
  @@schema_ns = "http://fault.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://fault.api.zuora.com/}InvalidQueryLocatorFault
class InvalidQueryLocatorFault
  @@schema_type = "InvalidQueryLocatorFault"
  @@schema_ns = "http://fault.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://fault.api.zuora.com/}UnexpectedErrorFault
class UnexpectedErrorFault
  @@schema_type = "UnexpectedErrorFault"
  @@schema_ns = "http://fault.api.zuora.com/"
  @@schema_element = []

  def initialize
  end
end

# {http://api.zuora.com/}ErrorCode
module ErrorCode
  ACCOUNTING_PERIOD_CLOSED = "ACCOUNTING_PERIOD_CLOSED"
  API_DISABLED = "API_DISABLED"
  BATCH_FAIL_ERROR = "BATCH_FAIL_ERROR"
  CANNOT_DELETE = "CANNOT_DELETE"
  CREDIT_CARD_PROCESSING_FAILURE = "CREDIT_CARD_PROCESSING_FAILURE"
  DUPLICATE_VALUE = "DUPLICATE_VALUE"
  INVALID_FIELD = "INVALID_FIELD"
  INVALID_ID = "INVALID_ID"
  INVALID_LOGIN = "INVALID_LOGIN"
  INVALID_SESSION = "INVALID_SESSION"
  INVALID_TEMPLATE = "INVALID_TEMPLATE"
  INVALID_TYPE = "INVALID_TYPE"
  INVALID_VALUE = "INVALID_VALUE"
  INVALID_VERSION = "INVALID_VERSION"
  MALFORMED_QUERY = "MALFORMED_QUERY"
  MAX_RECORDS_EXCEEDED = "MAX_RECORDS_EXCEEDED"
  MISSING_REQUIRED_VALUE = "MISSING_REQUIRED_VALUE"
  NO_PERMISSION = "NO_PERMISSION"
  SERVER_UNAVAILABLE = "SERVER_UNAVAILABLE"
  TRANSACTION_FAILED = "TRANSACTION_FAILED"
  UNKNOWN_ERROR = "UNKNOWN_ERROR"
end

end
