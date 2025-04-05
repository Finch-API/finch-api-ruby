# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class BenefitsSupport < FinchAPI::Internal::Type::BaseModel
        # @!attribute commuter
        #
        #   @return [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        optional :commuter, -> { FinchAPI::Models::HRIS::BenefitFeaturesAndOperations }, nil?: true

        # @!attribute custom_post_tax
        #
        #   @return [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        optional :custom_post_tax, -> { FinchAPI::Models::HRIS::BenefitFeaturesAndOperations }, nil?: true

        # @!attribute custom_pre_tax
        #
        #   @return [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        optional :custom_pre_tax, -> { FinchAPI::Models::HRIS::BenefitFeaturesAndOperations }, nil?: true

        # @!attribute fsa_dependent_care
        #
        #   @return [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        optional :fsa_dependent_care, -> { FinchAPI::Models::HRIS::BenefitFeaturesAndOperations }, nil?: true

        # @!attribute fsa_medical
        #
        #   @return [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        optional :fsa_medical, -> { FinchAPI::Models::HRIS::BenefitFeaturesAndOperations }, nil?: true

        # @!attribute hsa_post
        #
        #   @return [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        optional :hsa_post, -> { FinchAPI::Models::HRIS::BenefitFeaturesAndOperations }, nil?: true

        # @!attribute hsa_pre
        #
        #   @return [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        optional :hsa_pre, -> { FinchAPI::Models::HRIS::BenefitFeaturesAndOperations }, nil?: true

        # @!attribute s125_dental
        #
        #   @return [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        optional :s125_dental, -> { FinchAPI::Models::HRIS::BenefitFeaturesAndOperations }, nil?: true

        # @!attribute s125_medical
        #
        #   @return [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        optional :s125_medical, -> { FinchAPI::Models::HRIS::BenefitFeaturesAndOperations }, nil?: true

        # @!attribute s125_vision
        #
        #   @return [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        optional :s125_vision, -> { FinchAPI::Models::HRIS::BenefitFeaturesAndOperations }, nil?: true

        # @!attribute simple
        #
        #   @return [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        optional :simple, -> { FinchAPI::Models::HRIS::BenefitFeaturesAndOperations }, nil?: true

        # @!attribute simple_ira
        #
        #   @return [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        optional :simple_ira, -> { FinchAPI::Models::HRIS::BenefitFeaturesAndOperations }, nil?: true

        # @!parse
        #   # Each benefit type and their supported features. If the benefit type is not
        #   # supported, the property will be null
        #   #
        #   # @param commuter [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        #   # @param custom_post_tax [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        #   # @param custom_pre_tax [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        #   # @param fsa_dependent_care [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        #   # @param fsa_medical [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        #   # @param hsa_post [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        #   # @param hsa_pre [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        #   # @param s125_dental [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        #   # @param s125_medical [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        #   # @param s125_vision [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        #   # @param simple [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        #   # @param simple_ira [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations, nil]
        #   #
        #   def initialize(
        #     commuter: nil,
        #     custom_post_tax: nil,
        #     custom_pre_tax: nil,
        #     fsa_dependent_care: nil,
        #     fsa_medical: nil,
        #     hsa_post: nil,
        #     hsa_pre: nil,
        #     s125_dental: nil,
        #     s125_medical: nil,
        #     s125_vision: nil,
        #     simple: nil,
        #     simple_ira: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
      end
    end
  end
end
