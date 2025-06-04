# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Payment
        # Add a new sandbox payment
        #
        # @overload create(end_date: nil, pay_statements: nil, start_date: nil, request_options: {})
        #
        # @param end_date [String]
        # @param pay_statements [Array<FinchAPI::Models::HRIS::PayStatement>]
        # @param start_date [String]
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::Sandbox::PaymentCreateResponse]
        #
        # @see FinchAPI::Models::Sandbox::PaymentCreateParams
        def create(params = {})
          parsed, options = FinchAPI::Sandbox::PaymentCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "sandbox/payment",
            body: parsed,
            model: FinchAPI::Models::Sandbox::PaymentCreateResponse,
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
