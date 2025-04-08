# frozen_string_literal: true

# Standard libraries.
require "English"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) && caller.chain([$PROGRAM_NAME]).chain(ARGV).grep(/tapioca/)
  Warning.warn(
    <<~WARN
      \n
      ⚠️ skipped loading of "finch_api" gem under `tapioca`.

      This message is normal and expected if you are running a `tapioca` command, and does not impact `.rbi` generation.
      \n
    WARN
  )
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "finch_api/version"
require_relative "finch_api/internal/util"
require_relative "finch_api/internal/type/converter"
require_relative "finch_api/internal/type/unknown"
require_relative "finch_api/internal/type/boolean"
require_relative "finch_api/internal/type/io_like"
require_relative "finch_api/internal/type/enum"
require_relative "finch_api/internal/type/union"
require_relative "finch_api/internal/type/array_of"
require_relative "finch_api/internal/type/hash_of"
require_relative "finch_api/internal/type/base_model"
require_relative "finch_api/internal/type/base_page"
require_relative "finch_api/internal/type/request_parameters"
require_relative "finch_api/internal"
require_relative "finch_api/request_options"
require_relative "finch_api/errors"
require_relative "finch_api/internal/transport/base_client"
require_relative "finch_api/internal/transport/pooled_net_requester"
require_relative "finch_api/client"
require_relative "finch_api/internal/individuals_page"
require_relative "finch_api/internal/page"
require_relative "finch_api/internal/responses_page"
require_relative "finch_api/internal/single_page"
require_relative "finch_api/models/base_webhook_event"
require_relative "finch_api/models/hris/benefit_contribution"
require_relative "finch_api/models/sandbox/jobs/sandbox_job_configuration"
require_relative "finch_api/models/access_token_create_params"
require_relative "finch_api/models/account_disconnect_params"
require_relative "finch_api/models/account_introspect_params"
require_relative "finch_api/models/account_update_event"
require_relative "finch_api/models/company_event"
require_relative "finch_api/models/connect/session_new_params"
require_relative "finch_api/models/connect/session_new_response"
require_relative "finch_api/models/connect/session_reauthenticate_params"
require_relative "finch_api/models/connect/session_reauthenticate_response"
require_relative "finch_api/models/connection_status_type"
require_relative "finch_api/models/create_access_token_response"
require_relative "finch_api/models/directory_event"
require_relative "finch_api/models/disconnect_response"
require_relative "finch_api/models/employment_event"
require_relative "finch_api/models/hris/benefit_create_params"
require_relative "finch_api/models/hris/benefit_features_and_operations"
require_relative "finch_api/models/hris/benefit_frequency"
require_relative "finch_api/models/hris/benefit_list_params"
require_relative "finch_api/models/hris/benefit_list_supported_benefits_params"
require_relative "finch_api/models/hris/benefit_retrieve_params"
require_relative "finch_api/models/hris/benefits/enrolled_individual"
require_relative "finch_api/models/hris/benefits/individual_benefit"
require_relative "finch_api/models/hris/benefits/individual_enrolled_ids_params"
require_relative "finch_api/models/hris/benefits/individual_enrolled_ids_response"
require_relative "finch_api/models/hris/benefits/individual_enroll_many_params"
require_relative "finch_api/models/hris/benefits/individual_retrieve_many_benefits_params"
require_relative "finch_api/models/hris/benefits/individual_unenroll_many_params"
require_relative "finch_api/models/hris/benefits/unenrolled_individual"
require_relative "finch_api/models/hris/benefits_support"
require_relative "finch_api/models/hris/benefit_type"
require_relative "finch_api/models/hris/benefit_update_params"
require_relative "finch_api/models/hris/benfit_contribution"
require_relative "finch_api/models/hris/company/pay_statement_item/rule_create_params"
require_relative "finch_api/models/hris/company/pay_statement_item/rule_create_response"
require_relative "finch_api/models/hris/company/pay_statement_item/rule_delete_params"
require_relative "finch_api/models/hris/company/pay_statement_item/rule_delete_response"
require_relative "finch_api/models/hris/company/pay_statement_item/rule_list_params"
require_relative "finch_api/models/hris/company/pay_statement_item/rule_list_response"
require_relative "finch_api/models/hris/company/pay_statement_item/rule_update_params"
require_relative "finch_api/models/hris/company/pay_statement_item/rule_update_response"
require_relative "finch_api/models/hris/company/pay_statement_item_list_params"
require_relative "finch_api/models/hris/company/pay_statement_item_list_response"
require_relative "finch_api/models/hris/company_benefit"
require_relative "finch_api/models/hris/company_retrieve_params"
require_relative "finch_api/models/hris/create_company_benefits_response"
require_relative "finch_api/models/hris/directory_list_individuals_params"
require_relative "finch_api/models/hris/directory_list_params"
require_relative "finch_api/models/hris/document_list_params"
require_relative "finch_api/models/hris/document_list_response"
require_relative "finch_api/models/hris/document_response"
require_relative "finch_api/models/hris/document_retreive_params"
require_relative "finch_api/models/hris/document_retreive_response"
require_relative "finch_api/models/hris/employment_data"
require_relative "finch_api/models/hris/employment_data_response"
require_relative "finch_api/models/hris/employment_retrieve_many_params"
require_relative "finch_api/models/hris/company"
require_relative "finch_api/models/hris/individual"
require_relative "finch_api/models/hris/individual_in_directory"
require_relative "finch_api/models/hris/individual_response"
require_relative "finch_api/models/hris/individual_retrieve_many_params"
require_relative "finch_api/models/hris/payment"
require_relative "finch_api/models/hris/payment_list_params"
require_relative "finch_api/models/hris/pay_statement"
require_relative "finch_api/models/hris/pay_statement_response"
require_relative "finch_api/models/hris/pay_statement_response_body"
require_relative "finch_api/models/hris/pay_statement_retrieve_many_params"
require_relative "finch_api/models/hris/supported_benefit"
require_relative "finch_api/models/hris/support_per_benefit_type"
require_relative "finch_api/models/hris/update_company_benefit_response"
require_relative "finch_api/models/hris/w42005"
require_relative "finch_api/models/hris/w42020"
require_relative "finch_api/models/income"
require_relative "finch_api/models/individual_event"
require_relative "finch_api/models/introspection"
require_relative "finch_api/models/job_completion_event"
require_relative "finch_api/models/jobs/automated_async_job"
require_relative "finch_api/models/jobs/automated_create_params"
require_relative "finch_api/models/jobs/automated_create_response"
require_relative "finch_api/models/jobs/automated_list_params"
require_relative "finch_api/models/jobs/automated_list_response"
require_relative "finch_api/models/jobs/automated_retrieve_params"
require_relative "finch_api/models/jobs/manual_async_job"
require_relative "finch_api/models/jobs/manual_retrieve_params"
require_relative "finch_api/models/location"
require_relative "finch_api/models/money"
require_relative "finch_api/models/operation_support"
require_relative "finch_api/models/operation_support_matrix"
require_relative "finch_api/models/paging"
require_relative "finch_api/models/payment_event"
require_relative "finch_api/models/payroll/pay_group_list_params"
require_relative "finch_api/models/payroll/pay_group_list_response"
require_relative "finch_api/models/payroll/pay_group_retrieve_params"
require_relative "finch_api/models/payroll/pay_group_retrieve_response"
require_relative "finch_api/models/pay_statement_event"
require_relative "finch_api/models/provider"
require_relative "finch_api/models/provider_list_params"
require_relative "finch_api/models/request_forwarding_forward_params"
require_relative "finch_api/models/request_forwarding_forward_response"
require_relative "finch_api/models/sandbox/company_update_params"
require_relative "finch_api/models/sandbox/company_update_response"
require_relative "finch_api/models/sandbox/connection_create_params"
require_relative "finch_api/models/sandbox/connection_create_response"
require_relative "finch_api/models/sandbox/connections/account_create_params"
require_relative "finch_api/models/sandbox/connections/account_create_response"
require_relative "finch_api/models/sandbox/connections/account_update_params"
require_relative "finch_api/models/sandbox/connections/account_update_response"
require_relative "finch_api/models/sandbox/directory_create_params"
require_relative "finch_api/models/sandbox/directory_create_response"
require_relative "finch_api/models/sandbox/employment_update_params"
require_relative "finch_api/models/sandbox/employment_update_response"
require_relative "finch_api/models/sandbox/individual_update_params"
require_relative "finch_api/models/sandbox/individual_update_response"
require_relative "finch_api/models/sandbox/job_create_params"
require_relative "finch_api/models/sandbox/job_create_response"
require_relative "finch_api/models/sandbox/jobs/configuration_retrieve_params"
require_relative "finch_api/models/sandbox/jobs/configuration_retrieve_response"
require_relative "finch_api/models/sandbox/jobs/configuration_update_params"
require_relative "finch_api/models/sandbox/payment_create_params"
require_relative "finch_api/models/sandbox/payment_create_response"
require_relative "finch_api/models/webhook_event"
require_relative "finch_api/resources/access_tokens"
require_relative "finch_api/resources/account"
require_relative "finch_api/resources/connect"
require_relative "finch_api/resources/connect/sessions"
require_relative "finch_api/resources/hris"
require_relative "finch_api/resources/hris/benefits"
require_relative "finch_api/resources/hris/benefits/individuals"
require_relative "finch_api/resources/hris/company"
require_relative "finch_api/resources/hris/company/pay_statement_item"
require_relative "finch_api/resources/hris/company/pay_statement_item/rules"
require_relative "finch_api/resources/hris/directory"
require_relative "finch_api/resources/hris/documents"
require_relative "finch_api/resources/hris/employments"
require_relative "finch_api/resources/hris/individuals"
require_relative "finch_api/resources/hris/payments"
require_relative "finch_api/resources/hris/pay_statements"
require_relative "finch_api/resources/jobs"
require_relative "finch_api/resources/jobs/automated"
require_relative "finch_api/resources/jobs/manual"
require_relative "finch_api/resources/payroll"
require_relative "finch_api/resources/payroll/pay_groups"
require_relative "finch_api/resources/providers"
require_relative "finch_api/resources/request_forwarding"
require_relative "finch_api/resources/sandbox"
require_relative "finch_api/resources/sandbox/company"
require_relative "finch_api/resources/sandbox/connections"
require_relative "finch_api/resources/sandbox/connections/accounts"
require_relative "finch_api/resources/sandbox/directory"
require_relative "finch_api/resources/sandbox/employment"
require_relative "finch_api/resources/sandbox/individual"
require_relative "finch_api/resources/sandbox/jobs"
require_relative "finch_api/resources/sandbox/jobs/configuration"
require_relative "finch_api/resources/sandbox/payment"
require_relative "finch_api/resources/webhooks"
