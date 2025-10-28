# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class PayStatements
        # Read detailed pay statements for each individual.
        #
        # Deduction and contribution types are supported by the payroll systems that
        # supports Benefits.
        #
        # @overload retrieve_many(requests:, entity_ids: nil, request_options: {})
        #
        # @param requests [Array<FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request>] Body param: The array of batch requests.
        #
        # @param entity_ids [Array<String>] Query param: The entity IDs to specify which entities' data to access.
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Internal::ResponsesPage<FinchAPI::Models::HRIS::PayStatementResponse>]
        #
        # @see FinchAPI::Models::HRIS::PayStatementRetrieveManyParams
        def retrieve_many(params)
          parsed, options = FinchAPI::HRIS::PayStatementRetrieveManyParams.dump_request(params)
          query_params = [:entity_ids]
          @client.request(
            method: :post,
            path: "employer/pay-statement",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            page: FinchAPI::Internal::ResponsesPage,
            model: FinchAPI::HRIS::PayStatementResponse,
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
