zuora-ruby
==========

Zuora didn't have their own ruby library so I tried to write my own to make my own life easier.
A super-simple Ruby library to access the Zuora API based on zuora/ruby-quickstart.

    require 'zuora-ruby'
    Zuora::Ruby::Api.login("username", "password")
    
    ZUORA::Subscription.all # Get all subscriptions

    product = ZUORA::Product.all # Get all products
    product.find_by_id("abcd") # Find a particular product by ID
    product.product_rate_plans # Get all product rate plans for that product

    Subscription.effective_at(some_time) # Find all subscriptions effective at a particular time

