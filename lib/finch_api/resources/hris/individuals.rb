# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Individuals
        # Read individual data, excluding income and employment data
        #
        # @overload retrieve_many(entity_ids: nil, options: nil, requests: nil, request_options: {})
        #
        # @param entity_ids [Array<String>] Query param: The entity IDs to specify which entities' data to access.
        #
        # @param options [FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options, nil] Body param:
        #
        # @param requests [Array<FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request>] Body param:
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Internal::ResponsesPage<FinchAPI::Models::HRIS::IndividualResponse>]
        #
        # @see FinchAPI::Models::HRIS::IndividualRetrieveManyParams
        def retrieve_many(params = {})
          parsed, options = FinchAPI::HRIS::IndividualRetrieveManyParams.dump_request(params)
          query_params = [:entity_ids]
          @client.request(
            method: :post,
            path: "employer/individual",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            page: FinchAPI::Internal::ResponsesPage,
            model: FinchAPI::HRIS::IndividualResponse,
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
