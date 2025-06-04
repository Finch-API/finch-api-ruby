# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Company
        # Some parameter documentations has been truncated, see
        # {FinchAPI::Models::Sandbox::CompanyUpdateParams} for more details.
        #
        # Update a sandbox company's data
        #
        # @overload update(accounts:, departments:, ein:, entity:, legal_name:, locations:, primary_email:, primary_phone_number:, request_options: {})
        #
        # @param accounts [Array<FinchAPI::Models::Sandbox::CompanyUpdateParams::Account>, nil] An array of bank account objects associated with the payroll/HRIS system.
        #
        # @param departments [Array<FinchAPI::Models::Sandbox::CompanyUpdateParams::Department, nil>, nil] The array of company departments.
        #
        # @param ein [String, nil] The employer identification number.
        #
        # @param entity [FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity, nil] The entity type object.
        #
        # @param legal_name [String, nil] The legal name of the company.
        #
        # @param locations [Array<FinchAPI::Models::Location, nil>, nil]
        #
        # @param primary_email [String, nil] The email of the main administrator on the account.
        #
        # @param primary_phone_number [String, nil] The phone number of the main administrator on the account. Format: E.164, with e
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::Sandbox::CompanyUpdateResponse]
        #
        # @see FinchAPI::Models::Sandbox::CompanyUpdateParams
        def update(params)
          parsed, options = FinchAPI::Sandbox::CompanyUpdateParams.dump_request(params)
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
