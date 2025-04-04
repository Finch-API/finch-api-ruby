# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Company
        class PayStatementItemListResponse < FinchAPI::Internal::Type::BaseModel
          # The attributes of the pay statement item.
          sig { returns(T.nilable(FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes)) }
          attr_reader :attributes

          sig do
            params(
              attributes: T.any(
                FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes,
                FinchAPI::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :attributes

          # The category of the pay statement item.
          sig { returns(T.nilable(FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category::TaggedSymbol)) }
          attr_reader :category

          sig { params(category: FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category::OrSymbol).void }
          attr_writer :category

          # The name of the pay statement item.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              attributes: T.any(
                FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes,
                FinchAPI::Internal::AnyHash
              ),
              category: FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category::OrSymbol,
              name: String
            )
              .returns(T.attached_class)
          end
          def self.new(attributes: nil, category: nil, name: nil)
          end

          sig do
            override
              .returns(
                {
                  attributes: FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes,
                  category: FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category::TaggedSymbol,
                  name: String
                }
              )
          end
          def to_hash
          end

          class Attributes < FinchAPI::Internal::Type::BaseModel
            # `true` if the amount is paid by the employers. This field is only available for
            #   taxes.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :employer

            # The metadata of the pay statement item derived by the rules engine if available.
            #   Each attribute will be a key-value pair defined by a rule.
            sig { returns(T.nilable(T.anything)) }
            attr_accessor :metadata

            # `true` if the pay statement item is pre-tax. This field is only available for
            #   employee deductions.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :pre_tax

            # The type of the pay statement item.
            sig { returns(T.nilable(String)) }
            attr_accessor :type

            # The attributes of the pay statement item.
            sig do
              params(
                employer: T.nilable(T::Boolean),
                metadata: T.nilable(T.anything),
                pre_tax: T.nilable(T::Boolean),
                type: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(employer: nil, metadata: nil, pre_tax: nil, type: nil)
            end

            sig do
              override
                .returns(
                  {
                    employer: T.nilable(T::Boolean),
                    metadata: T.nilable(T.anything),
                    pre_tax: T.nilable(T::Boolean),
                    type: T.nilable(String)
                  }
                )
            end
            def to_hash
            end
          end

          # The category of the pay statement item.
          module Category
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category::TaggedSymbol
                )
              end

            EARNINGS =
              T.let(:earnings, FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category::TaggedSymbol)
            TAXES =
              T.let(:taxes, FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category::TaggedSymbol)
            EMPLOYEE_DEDUCTIONS =
              T.let(
                :employee_deductions,
                FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category::TaggedSymbol
              )
            EMPLOYER_CONTRIBUTIONS =
              T.let(
                :employer_contributions,
                FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category::TaggedSymbol
              )

            sig do
              override
                .returns(T::Array[FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category::TaggedSymbol])
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
