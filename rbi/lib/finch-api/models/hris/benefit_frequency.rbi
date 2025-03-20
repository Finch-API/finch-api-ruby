# typed: strong

module FinchAPI
  module Models
    module HRIS
      module BenefitFrequency
        extend FinchAPI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::BenefitFrequency) }
        OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol) }

        ONE_TIME = T.let(:one_time, FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol)
        EVERY_PAYCHECK = T.let(:every_paycheck, FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol)
        MONTHLY = T.let(:monthly, FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[FinchAPI::Models::HRIS::BenefitFrequency::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
