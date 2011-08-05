#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.0 on 2011-08-03 17:28:15.

module DfpApi; module V201107; module NetworkService
  class NetworkServiceRegistry
    NETWORKSERVICE_METHODS = {:update_network=>{:input=>[{:type=>"Network", :max_occurs=>1, :name=>:network, :min_occurs=>0}], :output=>{:fields=>[{:type=>"Network", :max_occurs=>1, :name=>:rval, :min_occurs=>0}], :name=>"update_network_response"}}, :get_all_networks=>{:input=>[], :output=>{:fields=>[{:type=>"Network", :max_occurs=>:unbounded, :name=>:rval, :min_occurs=>0}], :name=>"get_all_networks_response"}}, :get_current_network=>{:input=>[], :output=>{:fields=>[{:type=>"Network", :max_occurs=>1, :name=>:rval, :min_occurs=>0}], :name=>"get_current_network_response"}}}
    NETWORKSERVICE_TYPES = {:SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:request_id, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:response_time, :min_occurs=>0}]}, :Authentication=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:authentication_type, :min_occurs=>0}], :abstract=>true}, :OAuth=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:parameters, :min_occurs=>0}], :base=>"Authentication"}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:network_code, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:application_name, :min_occurs=>0}, {:type=>"Authentication", :max_occurs=>1, :name=>:authentication, :min_occurs=>0}]}, :ClientLogin=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:token, :min_occurs=>0}], :base=>"Authentication"}, :Network=>{:fields=>[{:type=>"long", :max_occurs=>1, :name=>:id, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:display_name, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:network_code, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:property_code, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:time_zone, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:currency_code, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:effective_root_ad_unit_id, :min_occurs=>0}]}}
    NETWORKSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return NETWORKSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return NETWORKSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return NETWORKSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end
