# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitContribution < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::BenefitContribution,
              FinchAPI::Internal::AnyHash
            )
          end

        # Contribution amount in cents (if `fixed`) or basis points (if `percent`).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount

        # Contribution type.
        sig do
          returns(
            T.nilable(FinchAPI::HRIS::BenefitContribution::Type::TaggedSymbol)
          )
        end
        attr_accessor :type

        sig do
          params(
            amount: T.nilable(Integer),
            type: T.nilable(FinchAPI::HRIS::BenefitContribution::Type::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # Contribution amount in cents (if `fixed`) or basis points (if `percent`).
          amount: nil,
          # Contribution type.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              amount: T.nilable(Integer),
              type:
                T.nilable(
                  FinchAPI::HRIS::BenefitContribution::Type::TaggedSymbol
                )
            }
          )
        end
        def to_hash
        end

        # Contribution type.
        module Type
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, FinchAPI::HRIS::BenefitContribution::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FIXED =
            T.let(
              :fixed,
              FinchAPI::HRIS::BenefitContribution::Type::TaggedSymbol
            )
          PERCENT =
            T.let(
              :percent,
              FinchAPI::HRIS::BenefitContribution::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[FinchAPI::HRIS::BenefitContribution::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
