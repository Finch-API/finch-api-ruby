# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Company
        class PayStatementItemListParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # Comma-delimited list of pay statement item categories to filter on. If empty,
          # defaults to all categories.
          sig do
            returns(
              T.nilable(T::Array[FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category::OrSymbol])
            )
          end
          attr_reader :categories

          sig do
            params(
              categories: T::Array[FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category::OrSymbol]
            )
              .void
          end
          attr_writer :categories

          # The end date to retrieve pay statement items by via their last seen pay date in
          # `YYYY-MM-DD` format.
          sig { returns(T.nilable(Date)) }
          attr_reader :end_date

          sig { params(end_date: Date).void }
          attr_writer :end_date

          # Case-insensitive partial match search by pay statement item name.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # The start date to retrieve pay statement items by via their last seen pay date
          # (inclusive) in `YYYY-MM-DD` format.
          sig { returns(T.nilable(Date)) }
          attr_reader :start_date

          sig { params(start_date: Date).void }
          attr_writer :start_date

          # String search by pay statement item type.
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            params(
              categories: T::Array[FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category::OrSymbol],
              end_date: Date,
              name: String,
              start_date: Date,
              type: String,
              request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(
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
          ); end
          sig do
            override
              .returns(
                {
                  categories: T::Array[FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category::OrSymbol],
                  end_date: Date,
                  name: String,
                  start_date: Date,
                  type: String,
                  request_options: FinchAPI::RequestOptions
                }
              )
          end
          def to_hash; end

          module Category
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EARNINGS =
              T.let(:earnings, FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category::TaggedSymbol)
            TAXES =
              T.let(:taxes, FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category::TaggedSymbol)
            EMPLOYEE_DEDUCTIONS =
              T.let(
                :employee_deductions,
                FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category::TaggedSymbol
              )
            EMPLOYER_CONTRIBUTIONS =
              T.let(
                :employer_contributions,
                FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category::TaggedSymbol
              )

            sig do
              override
                .returns(T::Array[FinchAPI::Models::HRIS::Company::PayStatementItemListParams::Category::TaggedSymbol])
            end
            def self.values; end
          end
        end
      end
    end
  end
end
