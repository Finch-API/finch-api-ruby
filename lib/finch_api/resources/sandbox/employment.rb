# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Employment
        # Update sandbox employment
        #
        # @overload update(individual_id, class_code: nil, custom_fields: nil, department: nil, employment: nil, employment_status: nil, end_date: nil, first_name: nil, income: nil, income_history: nil, is_active: nil, last_name: nil, latest_rehire_date: nil, location: nil, manager: nil, middle_name: nil, source_id: nil, start_date: nil, title: nil, request_options: {})
        #
        # @param individual_id [String]
        # @param class_code [String, nil]
        # @param custom_fields [Array<FinchAPI::Models::Sandbox::EmploymentUpdateParams::CustomField>]
        # @param department [FinchAPI::Models::Sandbox::EmploymentUpdateParams::Department, nil]
        # @param employment [FinchAPI::Models::Sandbox::EmploymentUpdateParams::Employment, nil]
        # @param employment_status [Symbol, FinchAPI::Models::Sandbox::EmploymentUpdateParams::EmploymentStatus, nil]
        # @param end_date [String, nil]
        # @param first_name [String, nil]
        # @param income [FinchAPI::Models::Income, nil]
        # @param income_history [Array<FinchAPI::Models::Income, nil>, nil]
        # @param is_active [Boolean, nil]
        # @param last_name [String, nil]
        # @param latest_rehire_date [String, nil]
        # @param location [FinchAPI::Models::Location, nil]
        # @param manager [FinchAPI::Models::Sandbox::EmploymentUpdateParams::Manager, nil]
        # @param middle_name [String, nil]
        # @param source_id [String]
        # @param start_date [String, nil]
        # @param title [String, nil]
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::Sandbox::EmploymentUpdateResponse]
        #
        # @see FinchAPI::Models::Sandbox::EmploymentUpdateParams
        def update(individual_id, params = {})
          parsed, options = FinchAPI::Models::Sandbox::EmploymentUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["sandbox/employment/%1$s", individual_id],
            body: parsed,
            model: FinchAPI::Models::Sandbox::EmploymentUpdateResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [FinchAPI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
