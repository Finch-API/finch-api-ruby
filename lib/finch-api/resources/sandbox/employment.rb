# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Employment
        # Update sandbox employment
        #
        # @param individual_id [String]
        #
        # @param params [FinchAPI::Models::Sandbox::EmploymentUpdateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :class_code Worker's compensation classification code for this employee
        #
        #   @option params [Array<FinchAPI::Models::Sandbox::EmploymentUpdateParams::CustomField>] :custom_fields Custom fields for the individual. These are fields which are defined by the
        #     employer in the system. Custom fields are not currently supported for assisted
        #     connections.
        #
        #   @option params [FinchAPI::Models::Sandbox::EmploymentUpdateParams::Department, nil] :department The department object.
        #
        #   @option params [FinchAPI::Models::Sandbox::EmploymentUpdateParams::Employment, nil] :employment The employment object.
        #
        #   @option params [Symbol, FinchAPI::Models::Sandbox::EmploymentUpdateParams::EmploymentStatus, nil] :employment_status The detailed employment status of the individual.
        #
        #   @option params [String, nil] :end_date
        #
        #   @option params [String, nil] :first_name The legal first name of the individual.
        #
        #   @option params [FinchAPI::Models::Income, nil] :income The employee's income as reported by the provider. This may not always be
        #     annualized income, but may be in units of bi-weekly, semi-monthly, daily, etc,
        #     depending on what information the provider returns.
        #
        #   @option params [Array<FinchAPI::Models::Income, nil>, nil] :income_history The array of income history.
        #
        #   @option params [Boolean, nil] :is_active `true` if the individual an an active employee or contractor at the company.
        #
        #   @option params [String, nil] :last_name The legal last name of the individual.
        #
        #   @option params [String, nil] :latest_rehire_date
        #
        #   @option params [FinchAPI::Models::Location, nil] :location
        #
        #   @option params [FinchAPI::Models::Sandbox::EmploymentUpdateParams::Manager, nil] :manager The manager object representing the manager of the individual within the org.
        #
        #   @option params [String, nil] :middle_name The legal middle name of the individual.
        #
        #   @option params [String] :source_id The source system's unique employment identifier for this individual
        #
        #   @option params [String, nil] :start_date
        #
        #   @option params [String, nil] :title The current title of the individual.
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
