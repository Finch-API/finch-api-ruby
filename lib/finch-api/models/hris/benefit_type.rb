# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # Type of benefit.
      module BenefitType
        extend FinchAPI::Enum

        NUMBER_401K = :"401k"
        NUMBER_401K_ROTH = :"401k_roth"
        NUMBER_401K_LOAN = :"401k_loan"
        NUMBER_403B = :"403b"
        NUMBER_403B_ROTH = :"403b_roth"
        NUMBER_457 = :"457"
        NUMBER_457_ROTH = :"457_roth"
        S125_MEDICAL = :s125_medical
        S125_DENTAL = :s125_dental
        S125_VISION = :s125_vision
        HSA_PRE = :hsa_pre
        HSA_POST = :hsa_post
        FSA_MEDICAL = :fsa_medical
        FSA_DEPENDENT_CARE = :fsa_dependent_care
        SIMPLE_IRA = :simple_ira
        SIMPLE = :simple
        COMMUTER = :commuter
        CUSTOM_POST_TAX = :custom_post_tax
        CUSTOM_PRE_TAX = :custom_pre_tax

        finalize!
      end
    end
  end
end
