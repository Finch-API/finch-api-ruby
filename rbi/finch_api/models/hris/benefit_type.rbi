# typed: strong

module FinchAPI
  module Models
    module HRIS
      # Type of benefit.
      module BenefitType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, FinchAPI::HRIS::BenefitType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BENEFIT_TYPE_457 =
          T.let(:"457", FinchAPI::HRIS::BenefitType::TaggedSymbol)
        BENEFIT_TYPE_401K =
          T.let(:"401k", FinchAPI::HRIS::BenefitType::TaggedSymbol)
        BENEFIT_TYPE_401K_ROTH =
          T.let(:"401k_roth", FinchAPI::HRIS::BenefitType::TaggedSymbol)
        BENEFIT_TYPE_401K_LOAN =
          T.let(:"401k_loan", FinchAPI::HRIS::BenefitType::TaggedSymbol)
        BENEFIT_TYPE_403B =
          T.let(:"403b", FinchAPI::HRIS::BenefitType::TaggedSymbol)
        BENEFIT_TYPE_403B_ROTH =
          T.let(:"403b_roth", FinchAPI::HRIS::BenefitType::TaggedSymbol)
        BENEFIT_TYPE_457_ROTH =
          T.let(:"457_roth", FinchAPI::HRIS::BenefitType::TaggedSymbol)
        COMMUTER = T.let(:commuter, FinchAPI::HRIS::BenefitType::TaggedSymbol)
        CUSTOM_POST_TAX =
          T.let(:custom_post_tax, FinchAPI::HRIS::BenefitType::TaggedSymbol)
        CUSTOM_PRE_TAX =
          T.let(:custom_pre_tax, FinchAPI::HRIS::BenefitType::TaggedSymbol)
        FSA_DEPENDENT_CARE =
          T.let(:fsa_dependent_care, FinchAPI::HRIS::BenefitType::TaggedSymbol)
        FSA_MEDICAL =
          T.let(:fsa_medical, FinchAPI::HRIS::BenefitType::TaggedSymbol)
        HSA_POST = T.let(:hsa_post, FinchAPI::HRIS::BenefitType::TaggedSymbol)
        HSA_PRE = T.let(:hsa_pre, FinchAPI::HRIS::BenefitType::TaggedSymbol)
        S125_DENTAL =
          T.let(:s125_dental, FinchAPI::HRIS::BenefitType::TaggedSymbol)
        S125_MEDICAL =
          T.let(:s125_medical, FinchAPI::HRIS::BenefitType::TaggedSymbol)
        S125_VISION =
          T.let(:s125_vision, FinchAPI::HRIS::BenefitType::TaggedSymbol)
        SIMPLE = T.let(:simple, FinchAPI::HRIS::BenefitType::TaggedSymbol)
        SIMPLE_IRA =
          T.let(:simple_ira, FinchAPI::HRIS::BenefitType::TaggedSymbol)

        sig do
          override.returns(T::Array[FinchAPI::HRIS::BenefitType::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
