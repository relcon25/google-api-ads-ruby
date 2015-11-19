# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.11.2 on 2015-11-18 12:14:52.

require 'ads_common/savon_service'
require 'dfp_api/v201502/reconciliation_order_report_service_registry'

module DfpApi; module V201502; module ReconciliationOrderReportService
  class ReconciliationOrderReportService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201502'
      super(config, endpoint, namespace, :v201502)
    end

    def get_reconciliation_order_reports_by_statement(*args, &block)
      return execute_action('get_reconciliation_order_reports_by_statement', args, &block)
    end

    def get_reconciliation_order_reports_by_statement_to_xml(*args)
      return get_soap_xml('get_reconciliation_order_reports_by_statement', args)
    end

    def perform_reconciliation_order_report_action(*args, &block)
      return execute_action('perform_reconciliation_order_report_action', args, &block)
    end

    def perform_reconciliation_order_report_action_to_xml(*args)
      return get_soap_xml('perform_reconciliation_order_report_action', args)
    end

    private

    def get_service_registry()
      return ReconciliationOrderReportServiceRegistry
    end

    def get_module()
      return DfpApi::V201502::ReconciliationOrderReportService
    end
  end
end; end; end
