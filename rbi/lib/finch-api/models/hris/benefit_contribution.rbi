# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitContribution < FinchAPI::BaseModel
        # Contribution amount in cents (if `fixed`) or basis points (if `percent`).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount

        # Contribution type.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::BenefitContribution::Type::TaggedSymbol)) }
        attr_accessor :type

        sig do
          params(
            amount: T.nilable(Integer),
            type: T.nilable(FinchAPI::Models::HRIS::BenefitContribution::Type::OrSymbol)
          )
            .returns(T.attached_class)
        end
        def self.new(amount: nil, type: nil)
        end

        sig do
          override
            .returns(
              {amount: T.nilable(Integer), type: T.nilable(FinchAPI::Models::HRIS::BenefitContribution::Type::TaggedSymbol)}
            )
        end
        def to_hash
        end

        # Contribution type.
        module Type
          extend FinchAPI::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::BenefitContribution::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::BenefitContribution::Type::TaggedSymbol) }

          FIXED = T.let(:fixed, FinchAPI::Models::HRIS::BenefitContribution::Type::TaggedSymbol)
          PERCENT = T.let(:percent, FinchAPI::Models::HRIS::BenefitContribution::Type::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[FinchAPI::Models::HRIS::BenefitContribution::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
