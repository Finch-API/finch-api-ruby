# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Company
        class PayStatementItem
          # @return [FinchAPI::Resources::HRIS::Company::PayStatementItem::Rules]
          attr_reader :rules

          # **Beta:** this endpoint currently serves employers onboarded after March 4th and
          # historical support will be added soon Retrieve a list of detailed pay statement
          # items for the access token's connection account.
          #
          # @overload list(categories: nil, end_date: nil, name: nil, start_date: nil, type: nil, request_options: {})
          #
          # @param categories [Array<Symbol, FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category>]
          # @param end_date [Date]
          # @param name [String]
          # @param start_date [Date]
          # @param type [String]
          # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [FinchAPI::Internal::ResponsesPage<FinchAPI::Models::HRIS::Company::PayStatementItemListResponse>]
          #
          # @see FinchAPI::Models::HRIS::Company::PayStatementItemListParams
          def list(params = {})
            parsed, options = FinchAPI::Models::HRIS::Company::PayStatementItemListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "employer/pay-statement-item",
              query: parsed,
              page: FinchAPI::Internal::ResponsesPage,
              model: FinchAPI::Models::HRIS::Company::PayStatementItemListResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [FinchAPI::Client]
          def initialize(client:)
            @client = client
            @rules = FinchAPI::Resources::HRIS::Company::PayStatementItem::Rules.new(client: client)
          end
        end
      end
    end
  end
end
