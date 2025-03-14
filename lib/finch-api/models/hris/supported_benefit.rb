# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class SupportedBenefit < FinchAPI::BaseModel
        # @!attribute annual_maximum
        #   Whether the provider supports an annual maximum for this benefit.
        #
        #   @return [Boolean, nil]
        optional :annual_maximum, FinchAPI::BooleanModel, nil?: true

        # @!attribute catch_up
        #   Whether the provider supports catch up for this benefit. This field will only be
        #     true for retirement benefits.
        #
        #   @return [Boolean, nil]
        optional :catch_up, FinchAPI::BooleanModel, nil?: true

        # @!attribute company_contribution
        #   Supported contribution types. An empty array indicates contributions are not
        #     supported.
        #
        #   @return [Array<Symbol, FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution, nil>, nil]
        optional :company_contribution,
                 -> { FinchAPI::ArrayOf[enum: FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution, nil?: true] },
                 nil?: true

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute employee_deduction
        #   Supported deduction types. An empty array indicates deductions are not
        #     supported.
        #
        #   @return [Array<Symbol, FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction, nil>, nil]
        optional :employee_deduction,
                 -> { FinchAPI::ArrayOf[enum: FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction, nil?: true] },
                 nil?: true

        # @!attribute [r] frequencies
        #   The list of frequencies supported by the provider for this benefit
        #
        #   @return [Array<Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil>, nil]
        optional :frequencies,
                 -> { FinchAPI::ArrayOf[enum: FinchAPI::Models::HRIS::BenefitFrequency, nil?: true] }

        # @!parse
        #   # @return [Array<Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil>]
        #   attr_writer :frequencies

        # @!attribute hsa_contribution_limit
        #   Whether the provider supports HSA contribution limits. Empty if this feature is
        #     not supported for the benefit. This array only has values for HSA benefits.
        #
        #   @return [Array<Symbol, FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit, nil>, nil]
        optional :hsa_contribution_limit,
                 -> { FinchAPI::ArrayOf[enum: FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit, nil?: true] },
                 nil?: true

        # @!attribute type
        #   Type of benefit.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
        optional :type, enum: -> { FinchAPI::Models::HRIS::BenefitType }, nil?: true

        # @!parse
        #   # @param annual_maximum [Boolean, nil]
        #   # @param catch_up [Boolean, nil]
        #   # @param company_contribution [Array<Symbol, FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution, nil>, nil]
        #   # @param description [String, nil]
        #   # @param employee_deduction [Array<Symbol, FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction, nil>, nil]
        #   # @param frequencies [Array<Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil>]
        #   # @param hsa_contribution_limit [Array<Symbol, FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit, nil>, nil]
        #   # @param type [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
        #   #
        #   def initialize(
        #     annual_maximum: nil,
        #     catch_up: nil,
        #     company_contribution: nil,
        #     description: nil,
        #     employee_deduction: nil,
        #     frequencies: nil,
        #     hsa_contribution_limit: nil,
        #     type: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        # @abstract
        class CompanyContribution < FinchAPI::Enum
          FIXED = :fixed
          PERCENT = :percent

          finalize!
        end

        # @abstract
        class EmployeeDeduction < FinchAPI::Enum
          FIXED = :fixed
          PERCENT = :percent

          finalize!
        end

        # @abstract
        class HsaContributionLimit < FinchAPI::Enum
          INDIVIDUAL = :individual
          FAMILY = :family

          finalize!
        end
      end
    end
  end
end
