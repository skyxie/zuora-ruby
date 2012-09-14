#!/usr/bin/env ruby
require 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = Soap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   login(parameters)
#
# ARGS
#   parameters      Login - {http://api.zuora.com/}login
#
# RETURNS
#   parameters      LoginResponse - {http://api.zuora.com/}loginResponse
#
# RAISES
#   #   fault           LoginFault - {http://fault.api.zuora.com/}LoginFault, #   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.login(parameters)

# SYNOPSIS
#   subscribe(parameters)
#
# ARGS
#   parameters      Subscribe - {http://api.zuora.com/}subscribe
#
# RETURNS
#   parameters      SubscribeResponse - {http://api.zuora.com/}subscribeResponse
#
# RAISES
#   #   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.subscribe(parameters)

# SYNOPSIS
#   create(parameters)
#
# ARGS
#   parameters      Create - {http://api.zuora.com/}create
#
# RETURNS
#   parameters      CreateResponse - {http://api.zuora.com/}createResponse
#
# RAISES
#   #   fault           InvalidTypeFault - {http://fault.api.zuora.com/}InvalidTypeFault, #   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.create(parameters)

# SYNOPSIS
#   generate(parameters)
#
# ARGS
#   parameters      Generate - {http://api.zuora.com/}generate
#
# RETURNS
#   parameters      GenerateResponse - {http://api.zuora.com/}generateResponse
#
# RAISES
#   #   fault           InvalidTypeFault - {http://fault.api.zuora.com/}InvalidTypeFault, #   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.generate(parameters)

# SYNOPSIS
#   update(parameters)
#
# ARGS
#   parameters      Update - {http://api.zuora.com/}update
#
# RETURNS
#   parameters      UpdateResponse - {http://api.zuora.com/}updateResponse
#
# RAISES
#   #   fault           InvalidTypeFault - {http://fault.api.zuora.com/}InvalidTypeFault, #   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.update(parameters)

# SYNOPSIS
#   delete(parameters)
#
# ARGS
#   parameters      Delete - {http://api.zuora.com/}delete
#
# RETURNS
#   parameters      DeleteResponse - {http://api.zuora.com/}deleteResponse
#
# RAISES
#   #   fault           InvalidTypeFault - {http://fault.api.zuora.com/}InvalidTypeFault, #   fault           InvalidValueFault - {http://fault.api.zuora.com/}InvalidValueFault, #   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.delete(parameters)

# SYNOPSIS
#   execute(parameters)
#
# ARGS
#   parameters      Execute - {http://api.zuora.com/}execute
#
# RETURNS
#   parameters      ExecuteResponse - {http://api.zuora.com/}executeResponse
#
# RAISES
#   #   fault           InvalidTypeFault - {http://fault.api.zuora.com/}InvalidTypeFault, #   fault           InvalidValueFault - {http://fault.api.zuora.com/}InvalidValueFault, #   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.execute(parameters)

# SYNOPSIS
#   query(parameters)
#
# ARGS
#   parameters      Query - {http://api.zuora.com/}query
#
# RETURNS
#   parameters      QueryResponse - {http://api.zuora.com/}queryResponse
#
# RAISES
#   #   fault           MalformedQueryFault - {http://fault.api.zuora.com/}MalformedQueryFault, #   fault           InvalidQueryLocatorFault - {http://fault.api.zuora.com/}InvalidQueryLocatorFault, #   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.query(parameters)

# SYNOPSIS
#   queryMore(parameters)
#
# ARGS
#   parameters      QueryMore - {http://api.zuora.com/}queryMore
#
# RETURNS
#   parameters      QueryMoreResponse - {http://api.zuora.com/}queryMoreResponse
#
# RAISES
#   #   fault           InvalidQueryLocatorFault - {http://fault.api.zuora.com/}InvalidQueryLocatorFault, #   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.queryMore(parameters)

# SYNOPSIS
#   getUserInfo(getUserInfo)
#
# ARGS
#   getUserInfo     GetUserInfo - {http://api.zuora.com/}getUserInfo
#
# RETURNS
#   parameters      GetUserInfoResponse - {http://api.zuora.com/}getUserInfoResponse
#
# RAISES
#   #   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
getUserInfo = nil
puts obj.getUserInfo(getUserInfo)

# SYNOPSIS
#   amend(parameters)
#
# ARGS
#   parameters      Amend - {http://api.zuora.com/}amend
#
# RETURNS
#   parameters      AmendResponse - {http://api.zuora.com/}amendResponse
#
# RAISES
#   #   fault           UnexpectedErrorFault - {http://fault.api.zuora.com/}UnexpectedErrorFault
#
parameters = nil
puts obj.amend(parameters)


