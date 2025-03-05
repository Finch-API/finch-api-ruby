# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitType < FinchAPI::Enum
        abstract!

        NUMBER_401K = T.let(:"401k", T.nilable(Symbol))
        NUMBER_401K_ROTH = T.let(:"401k_roth", T.nilable(Symbol))
        NUMBER_401K_LOAN = T.let(:"401k_loan", T.nilable(Symbol))
        NUMBER_403B = T.let(:"403b", T.nilable(Symbol))
        NUMBER_403B_ROTH = T.let(:"403b_roth", T.nilable(Symbol))
        NUMBER_457 = T.let(:"457", T.nilable(Symbol))
        NUMBER_457_ROTH = T.let(:"457_roth", T.nilable(Symbol))
        S125_MEDICAL = T.let(:s125_medical, T.nilable(Symbol))
        S125_DENTAL = T.let(:s125_dental, T.nilable(Symbol))
        S125_VISION = T.let(:s125_vision, T.nilable(Symbol))
        HSA_PRE = T.let(:hsa_pre, T.nilable(Symbol))
        HSA_POST = T.let(:hsa_post, T.nilable(Symbol))
        FSA_MEDICAL = T.let(:fsa_medical, T.nilable(Symbol))
        FSA_DEPENDENT_CARE = T.let(:fsa_dependent_care, T.nilable(Symbol))
        SIMPLE_IRA = T.let(:simple_ira, T.nilable(Symbol))
        SIMPLE = T.let(:simple, T.nilable(Symbol))
        COMMUTER = T.let(:commuter, T.nilable(Symbol))
        CUSTOM_POST_TAX = T.let(:custom_post_tax, T.nilable(Symbol))
        CUSTOM_PRE_TAX = T.let(:custom_pre_tax, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
