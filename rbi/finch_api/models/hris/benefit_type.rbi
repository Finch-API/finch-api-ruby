# typed: strong

module FinchAPI
  module Models
    module HRIS
      # Type of benefit.
      module BenefitType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::BenefitType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BENEFIT_TYPE_401K = T.let(:"401k", FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        BENEFIT_TYPE_401K_ROTH = T.let(:"401k_roth", FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        BENEFIT_TYPE_401K_LOAN = T.let(:"401k_loan", FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        BENEFIT_TYPE_403B = T.let(:"403b", FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        BENEFIT_TYPE_403B_ROTH = T.let(:"403b_roth", FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        BENEFIT_TYPE_457 = T.let(:"457", FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        BENEFIT_TYPE_457_ROTH = T.let(:"457_roth", FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        S125_MEDICAL = T.let(:s125_medical, FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        S125_DENTAL = T.let(:s125_dental, FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        S125_VISION = T.let(:s125_vision, FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        HSA_PRE = T.let(:hsa_pre, FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        HSA_POST = T.let(:hsa_post, FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        FSA_MEDICAL = T.let(:fsa_medical, FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        FSA_DEPENDENT_CARE = T.let(:fsa_dependent_care, FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        SIMPLE_IRA = T.let(:simple_ira, FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        SIMPLE = T.let(:simple, FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        COMMUTER = T.let(:commuter, FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        CUSTOM_POST_TAX = T.let(:custom_post_tax, FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)
        CUSTOM_PRE_TAX = T.let(:custom_pre_tax, FinchAPI::Models::HRIS::BenefitType::TaggedSymbol)

        sig { override.returns(T::Array[FinchAPI::Models::HRIS::BenefitType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
