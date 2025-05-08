# typed: strong

module FinchAPI
  module Models
    module HRIS
      # The frequency of the benefit deduction/contribution.
      module BenefitFrequency
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, FinchAPI::HRIS::BenefitFrequency) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONE_TIME =
          T.let(:one_time, FinchAPI::HRIS::BenefitFrequency::TaggedSymbol)
        EVERY_PAYCHECK =
          T.let(:every_paycheck, FinchAPI::HRIS::BenefitFrequency::TaggedSymbol)
        MONTHLY =
          T.let(:monthly, FinchAPI::HRIS::BenefitFrequency::TaggedSymbol)

        sig do
          override.returns(
            T::Array[FinchAPI::HRIS::BenefitFrequency::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
