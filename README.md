zuora-ruby
==========

Zuora didn't have their own ruby library so I tried to write my own to make my own life easier.
A super-simple Ruby library to access the Zuora API based on zuora/ruby-quickstart.

    require 'zuora-ruby'
    Zuora::Ruby::Api.login("username", "password")
    
    Zuora::Ruby::Subscription.all # Get all subscriptions

    Zuora::Ruby::Product.all # Get all products
    Zuora::Ruby::Product.effective_at(Time.now) # Get all active products

This is based on the version 38 wisdl