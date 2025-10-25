# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Company
        # @return [FinchAPI::Resources::HRIS::Company::PayStatementItem]
        attr_reader :pay_statement_item

        # Read basic company data
        #
        # @overload retrieve(entity_ids:, request_options: {})
        #
        # @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access.
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::HRIS::HRISCompany]
        #
        # @see FinchAPI::Models::HRIS::CompanyRetrieveParams
        def retrieve(params)
          parsed, options = FinchAPI::HRIS::CompanyRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: "employer/company",
            query: parsed,
            model: FinchAPI::HRIS::HRISCompany,
            options: options
          )
        end

        # @api private
        #
        # @param client [FinchAPI::Client]
        def initialize(client:)
          @client = client
          @pay_statement_item = FinchAPI::Resources::HRIS::Company::PayStatementItem.new(client: client)
        end
      end
    end
  end
end
