# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Individuals
        # Read individual data, excluding income and employment data
        #
        # @overload retrieve_many(options: nil, requests: nil, request_options: {})
        #
        # @param options [FinchAPI::HRIS::IndividualRetrieveManyParams::Options, nil]
        # @param requests [Array<FinchAPI::HRIS::IndividualRetrieveManyParams::Request>]
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Internal::ResponsesPage<FinchAPI::HRIS::IndividualResponse>]
        #
        # @see FinchAPI::Models::HRIS::IndividualRetrieveManyParams
        def retrieve_many(params = {})
          parsed, options = FinchAPI::HRIS::IndividualRetrieveManyParams.dump_request(params)
          @client.request(
            method: :post,
            path: "employer/individual",
            body: parsed,
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
