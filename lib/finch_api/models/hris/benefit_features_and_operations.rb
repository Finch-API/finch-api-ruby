# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class BenefitFeaturesAndOperations < FinchAPI::Internal::Type::BaseModel
        # @!attribute [r] supported_features
        #
        #   @return [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures, nil]
        optional :supported_features,
                 -> { FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures }

        # @!parse
        #   # @return [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures]
        #   attr_writer :supported_features

        # @!attribute [r] supported_operations
        #
        #   @return [FinchAPI::Models::HRIS::SupportPerBenefitType, nil]
        optional :supported_operations, -> { FinchAPI::Models::HRIS::SupportPerBenefitType }

        # @!parse
        #   # @return [FinchAPI::Models::HRIS::SupportPerBenefitType]
        #   attr_writer :supported_operations

        # @!parse
        #   # @param supported_features [FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures]
        #   # @param supported_operations [FinchAPI::Models::HRIS::SupportPerBenefitType]
        #   #
        #   def initialize(supported_features: nil, supported_operations: nil, **) = super

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

        # @see FinchAPI::Models::HRIS::BenefitFeaturesAndOperations#supported_features
        class SupportedFeatures < FinchAPI::Internal::Type::BaseModel
          # @!attribute annual_maximum
          #   Whether the provider supports an annual maximum for this benefit.
          #
          #   @return [Boolean, nil]
          optional :annual_maximum, FinchAPI::Internal::Type::Boolean, nil?: true

          # @!attribute catch_up
          #   Whether the provider supports catch up for this benefit. This field will only be
          #   true for retirement benefits.
          #
          #   @return [Boolean, nil]
          optional :catch_up, FinchAPI::Internal::Type::Boolean, nil?: true

          # @!attribute company_contribution
          #   Supported contribution types. An empty array indicates contributions are not
          #   supported.
          #
          #   @return [Array<Symbol, FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::CompanyContribution, nil>, nil]
          optional :company_contribution,
                   -> do
                     FinchAPI::Internal::Type::ArrayOf[
                       enum: FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::CompanyContribution, nil?: true
                     ]
                   end,
                   nil?: true

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute employee_deduction
          #   Supported deduction types. An empty array indicates deductions are not
          #   supported.
          #
          #   @return [Array<Symbol, FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::EmployeeDeduction, nil>, nil]
          optional :employee_deduction,
                   -> do
                     FinchAPI::Internal::Type::ArrayOf[
                       enum: FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::EmployeeDeduction, nil?: true
                     ]
                   end,
                   nil?: true

          # @!attribute [r] frequencies
          #   The list of frequencies supported by the provider for this benefit
          #
          #   @return [Array<Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil>, nil]
          optional :frequencies,
                   -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Models::HRIS::BenefitFrequency, nil?: true] }

          # @!parse
          #   # @return [Array<Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil>]
          #   attr_writer :frequencies

          # @!attribute hsa_contribution_limit
          #   Whether the provider supports HSA contribution limits. Empty if this feature is
          #   not supported for the benefit. This array only has values for HSA benefits.
          #
          #   @return [Array<Symbol, FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::HsaContributionLimit, nil>, nil]
          optional :hsa_contribution_limit,
                   -> do
                     FinchAPI::Internal::Type::ArrayOf[
                       enum: FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::HsaContributionLimit, nil?: true
                     ]
                   end,
                   nil?: true

          # @!parse
          #   # @param annual_maximum [Boolean, nil]
          #   # @param catch_up [Boolean, nil]
          #   # @param company_contribution [Array<Symbol, FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::CompanyContribution, nil>, nil]
          #   # @param description [String, nil]
          #   # @param employee_deduction [Array<Symbol, FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::EmployeeDeduction, nil>, nil]
          #   # @param frequencies [Array<Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil>]
          #   # @param hsa_contribution_limit [Array<Symbol, FinchAPI::Models::HRIS::BenefitFeaturesAndOperations::SupportedFeatures::HsaContributionLimit, nil>, nil]
          #   #
          #   def initialize(
          #     annual_maximum: nil,
          #     catch_up: nil,
          #     company_contribution: nil,
          #     description: nil,
          #     employee_deduction: nil,
          #     frequencies: nil,
          #     hsa_contribution_limit: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

          module CompanyContribution
            extend FinchAPI::Internal::Type::Enum

            FIXED = :fixed
            PERCENT = :percent

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          module EmployeeDeduction
            extend FinchAPI::Internal::Type::Enum

            FIXED = :fixed
            PERCENT = :percent

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          module HsaContributionLimit
            extend FinchAPI::Internal::Type::Enum

            INDIVIDUAL = :individual
            FAMILY = :family

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end
    end
  end
end
