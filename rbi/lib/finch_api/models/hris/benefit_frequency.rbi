# typed: strong

module FinchAPI
  module Models
    module HRIS
      # The frequency of the benefit deduction/contribution.
      module BenefitFrequency
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::BenefitFrequency) }
        OrSymbol = T.type_alias { T.any(Symbol, String, FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol) }

        ONE_TIME = T.let(:one_time, FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol)
        EVERY_PAYCHECK = T.let(:every_paycheck, FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol)
        MONTHLY = T.let(:monthly, FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol)

        sig { override.returns(T::Array[FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
