# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Payment
        # Add a new sandbox payment
        #
        # @param params [FinchAPI::Models::Sandbox::PaymentCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :end_date
        #
        #   @option params [Array<FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement>] :pay_statements
        #
        #   @option params [String] :start_date
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::Models::Sandbox::PaymentCreateResponse]
        #
        def create(params = {})
          parsed, options = FinchAPI::Models::Sandbox::PaymentCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "sandbox/payment",
            body: parsed,
            model: FinchAPI::Models::Sandbox::PaymentCreateResponse,
            options: options
          )
        end

        # @param client [FinchAPI::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
