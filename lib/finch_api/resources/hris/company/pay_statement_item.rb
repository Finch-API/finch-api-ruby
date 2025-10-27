# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Company
        class PayStatementItem
          # @return [FinchAPI::Resources::HRIS::Company::PayStatementItem::Rules]
          attr_reader :rules

          # Some parameter documentations has been truncated, see
          # {FinchAPI::Models::HRIS::Company::PayStatementItemListParams} for more details.
          #
          # **Beta:** this endpoint currently serves employers onboarded after March 4th and
          # historical support will be added soon Retrieve a list of detailed pay statement
          # items for the access token's connection account.
          #
          # @overload list(categories: nil, end_date: nil, entity_ids: nil, name: nil, start_date: nil, type: nil, request_options: {})
          #
          # @param categories [Array<Symbol, FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category>] Comma-delimited list of pay statement item categories to filter on. If empty, de
          #
          # @param end_date [Date] The end date to retrieve pay statement items by via their last seen pay date in
          #
          # @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access.
          #
          # @param name [String] Case-insensitive partial match search by pay statement item name.
          #
          # @param start_date [Date] The start date to retrieve pay statement items by via their last seen pay date (
          #
          # @param type [String] String search by pay statement item type.
          #
          # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [FinchAPI::Internal::ResponsesPage<FinchAPI::Models::HRIS::Company::PayStatementItemListResponse>]
          #
          # @see FinchAPI::Models::HRIS::Company::PayStatementItemListParams
          def list(params = {})
            parsed, options = FinchAPI::HRIS::Company::PayStatementItemListParams.dump_request(params)
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
