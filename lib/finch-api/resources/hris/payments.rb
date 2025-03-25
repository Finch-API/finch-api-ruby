# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Payments
        # Read payroll and contractor related payments by the company.
        #
        # @param params [FinchAPI::Models::HRIS::PaymentListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Date] :end_date The end date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
        #     format.
        #
        #   @option params [Date] :start_date The start date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
        #     format.
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::SinglePage<FinchAPI::Models::HRIS::Payment>]
        def list(params)
          parsed, options = FinchAPI::Models::HRIS::PaymentListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "employer/payment",
            query: parsed,
            page: FinchAPI::SinglePage,
            model: FinchAPI::Models::HRIS::Payment,
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
