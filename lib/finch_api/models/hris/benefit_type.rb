# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # Type of benefit.
      module BenefitType
        extend FinchAPI::Internal::Type::Enum

        BENEFIT_TYPE_457 = :"457"
        BENEFIT_TYPE_401K = :"401k"
        BENEFIT_TYPE_401K_ROTH = :"401k_roth"
        BENEFIT_TYPE_401K_LOAN = :"401k_loan"
        BENEFIT_TYPE_403B = :"403b"
        BENEFIT_TYPE_403B_ROTH = :"403b_roth"
        BENEFIT_TYPE_457_ROTH = :"457_roth"
        COMMUTER = :commuter
        CUSTOM_POST_TAX = :custom_post_tax
        CUSTOM_PRE_TAX = :custom_pre_tax
        FSA_DEPENDENT_CARE = :fsa_dependent_care
        FSA_MEDICAL = :fsa_medical
        HSA_POST = :hsa_post
        HSA_PRE = :hsa_pre
        S125_DENTAL = :s125_dental
        S125_MEDICAL = :s125_medical
        S125_VISION = :s125_vision
        SIMPLE = :simple
        SIMPLE_IRA = :simple_ira

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
