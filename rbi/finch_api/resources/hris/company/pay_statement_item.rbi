# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Company
        class PayStatementItem
          sig do
            returns(FinchAPI::Resources::HRIS::Company::PayStatementItem::Rules)
          end
          attr_reader :rules

          # **Beta:** this endpoint currently serves employers onboarded after March 4th and
          # historical support will be added soon Retrieve a list of detailed pay statement
          # items for the access token's connection account.
          sig do
            params(
              categories:
                T::Array[
                  FinchAPI::HRIS::Company::PayStatementItemListParams::Category::OrSymbol
                ],
              end_date: Date,
              name: String,
              start_date: Date,
              type: String,
              request_options: FinchAPI::RequestOptions::OrHash
            ).returns(
              FinchAPI::Internal::ResponsesPage[
                FinchAPI::Models::HRIS::Company::PayStatementItemListResponse
              ]
            )
          end
          def list(
            # Comma-delimited list of pay statement item categories to filter on. If empty,
            # defaults to all categories.
            categories: nil,
            # The end date to retrieve pay statement items by via their last seen pay date in
            # `YYYY-MM-DD` format.
            end_date: nil,
            # Case-insensitive partial match search by pay statement item name.
            name: nil,
            # The start date to retrieve pay statement items by via their last seen pay date
            # (inclusive) in `YYYY-MM-DD` format.
            start_date: nil,
            # String search by pay statement item type.
            type: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: FinchAPI::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
