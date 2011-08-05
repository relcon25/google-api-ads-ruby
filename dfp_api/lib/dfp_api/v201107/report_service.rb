#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.0 on 2011-08-03 17:27:44.

require 'ads_common/savon_service'
require 'dfp_api/v201107/report_service_registry'

module DfpApi; module V201107; module ReportService
  class ReportService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201107'
      super(api, endpoint, namespace, :v201107)
    end

    def get_report_download_url(*args)
      return execute_action('get_report_download_url', args)
    end

    def get_report_job(*args)
      return execute_action('get_report_job', args)
    end

    def run_report_job(*args)
      return execute_action('run_report_job', args)
    end

    private

    def get_service_registry()
      return ReportServiceRegistry
    end

    def get_module()
      return DfpApi::V201107::ReportService
    end
  end
end; end; end
