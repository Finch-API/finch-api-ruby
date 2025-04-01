# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Company
        # Update a sandbox company's data
        #
        # @param params [FinchAPI::Models::Sandbox::CompanyUpdateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<FinchAPI::Models::Sandbox::CompanyUpdateParams::Account>, nil] :accounts An array of bank account objects associated with the payroll/HRIS system.
        #
        #   @option params [Array<FinchAPI::Models::Sandbox::CompanyUpdateParams::Department, nil>, nil] :departments The array of company departments.
        #
        #   @option params [String, nil] :ein The employer identification number.
        #
        #   @option params [FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity, nil] :entity The entity type object.
        #
        #   @option params [String, nil] :legal_name The legal name of the company.
        #
        #   @option params [Array<FinchAPI::Models::Location, nil>, nil] :locations
        #
        #   @option params [String, nil] :primary_email The email of the main administrator on the account.
        #
        #   @option params [String, nil] :primary_phone_number The phone number of the main administrator on the account. Format: `XXXXXXXXXX`
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::Models::Sandbox::CompanyUpdateResponse]
        #
        # @see FinchAPI::Models::Sandbox::CompanyUpdateParams
        def update(params)
          parsed, options = FinchAPI::Models::Sandbox::CompanyUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: "sandbox/company",
            body: parsed,
            model: FinchAPI::Models::Sandbox::CompanyUpdateResponse,
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
