# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Company
        # Update a sandbox company's data
        #
        # @overload update(accounts:, departments:, ein:, entity:, legal_name:, locations:, primary_email:, primary_phone_number:, request_options: {})
        #
        # @param accounts [Array<FinchAPI::Models::Sandbox::CompanyUpdateParams::Account>, nil]
        # @param departments [Array<FinchAPI::Models::Sandbox::CompanyUpdateParams::Department, nil>, nil]
        # @param ein [String, nil]
        # @param entity [FinchAPI::Models::Sandbox::CompanyUpdateParams::Entity, nil]
        # @param legal_name [String, nil]
        # @param locations [Array<FinchAPI::Models::Location, nil>, nil]
        # @param primary_email [String, nil]
        # @param primary_phone_number [String, nil]
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
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
