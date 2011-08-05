#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.0 on 2011-08-03 17:27:46.

module DfpApi; module V201107; module LabelService
  class LabelServiceRegistry
    LABELSERVICE_METHODS = {:create_labels=>{:input=>[{:type=>"Label", :max_occurs=>:unbounded, :name=>:labels, :min_occurs=>0}], :output=>{:fields=>[{:type=>"Label", :max_occurs=>:unbounded, :name=>:rval, :min_occurs=>0}], :name=>"create_labels_response"}}, :get_label=>{:input=>[{:type=>"long", :max_occurs=>1, :name=>:label_id, :min_occurs=>0}], :output=>{:fields=>[{:type=>"Label", :max_occurs=>1, :name=>:rval, :min_occurs=>0}], :name=>"get_label_response"}}, :get_labels_by_statement=>{:input=>[{:type=>"Statement", :max_occurs=>1, :name=>:filter_statement, :min_occurs=>0}], :output=>{:fields=>[{:type=>"LabelPage", :max_occurs=>1, :name=>:rval, :min_occurs=>0}], :name=>"get_labels_by_statement_response"}}, :perform_label_action=>{:input=>[{:type=>"LabelAction", :max_occurs=>1, :name=>:label_action, :min_occurs=>0}, {:type=>"Statement", :max_occurs=>1, :name=>:filter_statement, :min_occurs=>0}], :output=>{:fields=>[{:type=>"UpdateResult", :max_occurs=>1, :name=>:rval, :min_occurs=>0}], :name=>"perform_label_action_response"}}, :update_label=>{:input=>[{:type=>"Label", :max_occurs=>1, :name=>:label, :min_occurs=>0}], :output=>{:fields=>[{:type=>"Label", :max_occurs=>1, :name=>:rval, :min_occurs=>0}], :name=>"update_label_response"}}, :create_label=>{:input=>[{:type=>"Label", :max_occurs=>1, :name=>:label, :min_occurs=>0}], :output=>{:fields=>[{:type=>"Label", :max_occurs=>1, :name=>:rval, :min_occurs=>0}], :name=>"create_label_response"}}, :update_labels=>{:input=>[{:type=>"Label", :max_occurs=>:unbounded, :name=>:labels, :min_occurs=>0}], :output=>{:fields=>[{:type=>"Label", :max_occurs=>:unbounded, :name=>:rval, :min_occurs=>0}], :name=>"update_labels_response"}}}
    LABELSERVICE_TYPES = {:SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:request_id, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:response_time, :min_occurs=>0}]}, :DeactivateLabels=>{:fields=>[], :base=>"LabelAction"}, :Statement=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:query, :min_occurs=>0}, {:type=>"String_ValueMapEntry", :max_occurs=>:unbounded, :name=>:values, :min_occurs=>0}]}, :UpdateResult=>{:fields=>[{:type=>"int", :max_occurs=>1, :name=>:num_changes, :min_occurs=>0}]}, :LabelAction=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:label_action_type, :min_occurs=>0}], :abstract=>true}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:key, :min_occurs=>0}, {:type=>"Value", :max_occurs=>1, :name=>:value, :min_occurs=>0}]}, :NumberValue=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:value, :min_occurs=>0}], :base=>"Value"}, :Authentication=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:authentication_type, :min_occurs=>0}], :abstract=>true}, :Label=>{:fields=>[{:type=>"long", :max_occurs=>1, :name=>:id, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:name, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:description, :min_occurs=>0}, {:type=>"boolean", :max_occurs=>1, :name=>:is_active, :min_occurs=>0}, {:type=>"LabelType", :max_occurs=>1, :name=>:type, :min_occurs=>0}]}, :OAuth=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:parameters, :min_occurs=>0}], :base=>"Authentication"}, :LabelPage=>{:fields=>[{:type=>"int", :max_occurs=>1, :name=>:total_result_set_size, :min_occurs=>0}, {:type=>"int", :max_occurs=>1, :name=>:start_index, :min_occurs=>0}, {:type=>"Label", :max_occurs=>:unbounded, :name=>:results, :min_occurs=>0}]}, :BooleanValue=>{:fields=>[{:type=>"boolean", :max_occurs=>1, :name=>:value, :min_occurs=>0}], :base=>"Value"}, :Value=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:value_type, :min_occurs=>0}], :abstract=>true}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:network_code, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:application_name, :min_occurs=>0}, {:type=>"Authentication", :max_occurs=>1, :name=>:authentication, :min_occurs=>0}]}, :ClientLogin=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:token, :min_occurs=>0}], :base=>"Authentication"}, :TextValue=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:value, :min_occurs=>0}], :base=>"Value"}, :ActivateLabels=>{:fields=>[], :base=>"LabelAction"}}
    LABELSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return LABELSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return LABELSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return LABELSERVICE_NAMESPACES[index]
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
