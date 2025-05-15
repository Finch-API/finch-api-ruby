# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Company
        class PayStatementItemListResponse < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::Models::HRIS::Company::PayStatementItemListResponse,
                FinchAPI::Internal::AnyHash
              )
            end

          # The attributes of the pay statement item.
          sig do
            returns(
              FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes
            )
          end
          attr_reader :attributes

          sig do
            params(
              attributes:
                FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes::OrHash
            ).void
          end
          attr_writer :attributes

          # The category of the pay statement item.
          sig do
            returns(
              FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category::TaggedSymbol
            )
          end
          attr_accessor :category

          # The name of the pay statement item.
          sig { returns(String) }
          attr_accessor :name

          sig do
            params(
              attributes:
                FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes::OrHash,
              category:
                FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category::OrSymbol,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The attributes of the pay statement item.
            attributes:,
            # The category of the pay statement item.
            category:,
            # The name of the pay statement item.
            name:
          )
          end

          sig do
            override.returns(
              {
                attributes:
                  FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes,
                category:
                  FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category::TaggedSymbol,
                name: String
              }
            )
          end
          def to_hash
          end

          class Attributes < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes,
                  FinchAPI::Internal::AnyHash
                )
              end

            # The metadata of the pay statement item derived by the rules engine if available.
            # Each attribute will be a key-value pair defined by a rule.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
            attr_accessor :metadata

            # `true` if the amount is paid by the employers. This field is only available for
            # taxes.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :employer

            # `true` if the pay statement item is pre-tax. This field is only available for
            # employee deductions.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :pre_tax

            # The type of the pay statement item.
            sig { returns(T.nilable(String)) }
            attr_accessor :type

            # The attributes of the pay statement item.
            sig do
              params(
                metadata: T.nilable(T::Hash[Symbol, T.nilable(T.anything)]),
                employer: T.nilable(T::Boolean),
                pre_tax: T.nilable(T::Boolean),
                type: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # The metadata of the pay statement item derived by the rules engine if available.
              # Each attribute will be a key-value pair defined by a rule.
              metadata:,
              # `true` if the amount is paid by the employers. This field is only available for
              # taxes.
              employer: nil,
              # `true` if the pay statement item is pre-tax. This field is only available for
              # employee deductions.
              pre_tax: nil,
              # The type of the pay statement item.
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(T.anything)]),
                  employer: T.nilable(T::Boolean),
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
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EARNINGS =
              T.let(
                :earnings,
                FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category::TaggedSymbol
              )
            TAXES =
              T.let(
                :taxes,
                FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category::TaggedSymbol
              )
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
              override.returns(
                T::Array[
                  FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
