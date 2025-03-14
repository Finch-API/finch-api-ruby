# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Individuals
        # Read individual data, excluding income and employment data
        #
        # @param params [FinchAPI::Models::HRIS::IndividualRetrieveManyParams, Hash{Symbol=>Object}] .
        #
        #   @option params [FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options, nil] :options
        #
        #   @option params [Array<FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request>] :requests
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::ResponsesPage<FinchAPI::Models::HRIS::IndividualResponse>]
        def retrieve_many(params = {})
          parsed, options = FinchAPI::Models::HRIS::IndividualRetrieveManyParams.dump_request(params)
          @client.request(
            method: :post,
            path: "employer/individual",
            body: parsed,
            page: FinchAPI::ResponsesPage,
            model: FinchAPI::Models::HRIS::IndividualResponse,
            options: options
          )
        end

        # @param client [FinchAPI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
