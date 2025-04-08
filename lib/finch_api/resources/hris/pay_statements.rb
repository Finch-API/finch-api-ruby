# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class PayStatements
        # Read detailed pay statements for each individual.
        #
        # Deduction and contribution types are supported by the payroll systems that
        # supports Benefits.
        #
        # @overload retrieve_many(requests:, request_options: {})
        #
        # @param requests [Array<FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request>]
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Internal::ResponsesPage<FinchAPI::Models::HRIS::PayStatementResponse>]
        #
        # @see FinchAPI::Models::HRIS::PayStatementRetrieveManyParams
        def retrieve_many(params)
          parsed, options = FinchAPI::Models::HRIS::PayStatementRetrieveManyParams.dump_request(params)
          @client.request(
            method: :post,
            path: "employer/pay-statement",
            body: parsed,
            page: FinchAPI::Internal::ResponsesPage,
            model: FinchAPI::Models::HRIS::PayStatementResponse,
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
