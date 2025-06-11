# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Payments
        # Some parameter documentations has been truncated, see
        # {FinchAPI::Models::HRIS::PaymentListParams} for more details.
        #
        # Read payroll and contractor related payments by the company.
        #
        # @overload list(end_date:, start_date:, request_options: {})
        #
        # @param end_date [Date] The end date to retrieve payments by a company (inclusive) in `YYYY-MM-DD` forma
        #
        # @param start_date [Date] The start date to retrieve payments by a company (inclusive) in `YYYY-MM-DD` for
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Internal::SinglePage<FinchAPI::Models::HRIS::Payment>]
        #
        # @see FinchAPI::Models::HRIS::PaymentListParams
        def list(params)
          parsed, options = FinchAPI::HRIS::PaymentListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "employer/payment",
            query: parsed,
            page: FinchAPI::Internal::SinglePage,
            model: FinchAPI::HRIS::Payment,
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
