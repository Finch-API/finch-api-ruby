# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Employment
        # Some parameter documentations has been truncated, see
        # {FinchAPI::Models::Sandbox::EmploymentUpdateParams} for more details.
        #
        # Update sandbox employment
        #
        # @overload update(individual_id, class_code: nil, custom_fields: nil, department: nil, employment: nil, employment_status: nil, end_date: nil, first_name: nil, income: nil, income_history: nil, is_active: nil, last_name: nil, latest_rehire_date: nil, location: nil, manager: nil, middle_name: nil, source_id: nil, start_date: nil, title: nil, request_options: {})
        #
        # @param individual_id [String]
        #
        # @param class_code [String, nil] Worker's compensation classification code for this employee
        #
        # @param custom_fields [Array<FinchAPI::Models::Sandbox::EmploymentUpdateParams::CustomField>, nil] Custom fields for the individual. These are fields which are defined by the empl
        #
        # @param department [FinchAPI::Models::Sandbox::EmploymentUpdateParams::Department, nil] The department object.
        #
        # @param employment [FinchAPI::Models::Sandbox::EmploymentUpdateParams::Employment, nil] The employment object.
        #
        # @param employment_status [Symbol, FinchAPI::Models::Sandbox::EmploymentUpdateParams::EmploymentStatus, nil] The detailed employment status of the individual. Available options: `active`, `
        #
        # @param end_date [String, nil]
        #
        # @param first_name [String, nil] The legal first name of the individual.
        #
        # @param income [FinchAPI::Models::Income, nil] The employee's income as reported by the provider. This may not always be annual
        #
        # @param income_history [Array<FinchAPI::Models::Income, nil>, nil] The array of income history.
        #
        # @param is_active [Boolean, nil] `true` if the individual an an active employee or contractor at the company.
        #
        # @param last_name [String, nil] The legal last name of the individual.
        #
        # @param latest_rehire_date [String, nil]
        #
        # @param location [FinchAPI::Models::Location, nil]
        #
        # @param manager [FinchAPI::Models::Sandbox::EmploymentUpdateParams::Manager, nil] The manager object representing the manager of the individual within the org.
        #
        # @param middle_name [String, nil] The legal middle name of the individual.
        #
        # @param source_id [String, nil] The source system's unique employment identifier for this individual
        #
        # @param start_date [String, nil]
        #
        # @param title [String, nil] The current title of the individual.
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::Sandbox::EmploymentUpdateResponse]
        #
        # @see FinchAPI::Models::Sandbox::EmploymentUpdateParams
        def update(individual_id, params = {})
          parsed, options = FinchAPI::Sandbox::EmploymentUpdateParams.dump_request(params)
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
