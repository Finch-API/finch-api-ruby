# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Payments
        # Read payroll and contractor related payments by the company.
        #
        # @overload list(end_date:, start_date:, request_options: {})
        #
        # @param end_date [Date]
        # @param start_date [Date]
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::SinglePage<FinchAPI::Models::HRIS::Payment>]
        #
        # @see FinchAPI::Models::HRIS::PaymentListParams
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
