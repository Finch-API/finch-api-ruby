# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class PayStatements
        # Read detailed pay statements for each individual.
        #
        #   Deduction and contribution types are supported by the payroll systems that
        #   supports Benefits.
        #
        # @param params [FinchAPI::Models::HRIS::PayStatementRetrieveManyParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request>] :requests The array of batch requests.
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::ResponsesPage<FinchAPI::Models::HRIS::PayStatementResponse>]
        def retrieve_many(params)
          parsed, options = FinchAPI::Models::HRIS::PayStatementRetrieveManyParams.dump_request(params)
          @client.request(
            method: :post,
            path: "employer/pay-statement",
            body: parsed,
            page: FinchAPI::ResponsesPage,
            model: FinchAPI::Models::HRIS::PayStatementResponse,
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
