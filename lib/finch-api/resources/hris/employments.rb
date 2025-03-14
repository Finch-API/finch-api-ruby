# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Employments
        # Read individual employment and income data
        #
        # @param params [FinchAPI::Models::HRIS::EmploymentRetrieveManyParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request>] :requests The array of batch requests.
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::ResponsesPage<FinchAPI::Models::HRIS::EmploymentDataResponse>]
        def retrieve_many(params)
          parsed, options = FinchAPI::Models::HRIS::EmploymentRetrieveManyParams.dump_request(params)
          @client.request(
            method: :post,
            path: "employer/employment",
            body: parsed,
            page: FinchAPI::ResponsesPage,
            model: FinchAPI::Models::HRIS::EmploymentDataResponse,
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
