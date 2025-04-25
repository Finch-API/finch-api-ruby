# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Employments
        # Read individual employment and income data
        #
        # @overload retrieve_many(requests:, request_options: {})
        #
        # @param requests [Array<FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request>] The array of batch requests.
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Internal::ResponsesPage<FinchAPI::Models::HRIS::EmploymentDataResponse>]
        #
        # @see FinchAPI::Models::HRIS::EmploymentRetrieveManyParams
        def retrieve_many(params)
          parsed, options = FinchAPI::Models::HRIS::EmploymentRetrieveManyParams.dump_request(params)
          @client.request(
            method: :post,
            path: "employer/employment",
            body: parsed,
            page: FinchAPI::Internal::ResponsesPage,
            model: FinchAPI::Models::HRIS::EmploymentDataResponse,
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
