# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Benefits#list_supported_benefits
      class SupportedBenefit < FinchAPI::Internal::Type::BaseModel
        # @!attribute annual_maximum
        #   Whether the provider supports an annual maximum for this benefit.
        #
        #   @return [Boolean, nil]
        required :annual_maximum, FinchAPI::Internal::Type::Boolean, nil?: true

        # @!attribute company_contribution
        #   Supported contribution types. An empty array indicates contributions are not
        #   supported.
        #
        #   @return [Array<Symbol, FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution, nil>, nil]
        required :company_contribution,
                 -> {
                   FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::HRIS::SupportedBenefit::CompanyContribution,
                                                     nil?: true]
                 },
                 nil?: true

        # @!attribute description
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute employee_deduction
        #   Supported deduction types. An empty array indicates deductions are not
        #   supported.
        #
        #   @return [Array<Symbol, FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction, nil>, nil]
        required :employee_deduction,
                 -> {
                   FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::HRIS::SupportedBenefit::EmployeeDeduction,
                                                     nil?: true]
                 },
                 nil?: true

        # @!attribute frequencies
        #   The list of frequencies supported by the provider for this benefit
        #
        #   @return [Array<Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil>]
        required :frequencies,
                 -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::HRIS::BenefitFrequency, nil?: true] }

        # @!attribute catch_up
        #   Whether the provider supports catch up for this benefit. This field will only be
        #   true for retirement benefits.
        #
        #   @return [Boolean, nil]
        optional :catch_up, FinchAPI::Internal::Type::Boolean, nil?: true

        # @!attribute hsa_contribution_limit
        #   Whether the provider supports HSA contribution limits. Empty if this feature is
        #   not supported for the benefit. This array only has values for HSA benefits.
        #
        #   @return [Array<Symbol, FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit, nil>, nil]
        optional :hsa_contribution_limit,
                 -> {
                   FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::HRIS::SupportedBenefit::HsaContributionLimit,
                                                     nil?: true]
                 },
                 nil?: true

        # @!method initialize(annual_maximum:, company_contribution:, description:, employee_deduction:, frequencies:, catch_up: nil, hsa_contribution_limit: nil)
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::HRIS::SupportedBenefit} for more details.
        #
        #   @param annual_maximum [Boolean, nil] Whether the provider supports an annual maximum for this benefit.
        #
        #   @param company_contribution [Array<Symbol, FinchAPI::Models::HRIS::SupportedBenefit::CompanyContribution, nil>, nil] Supported contribution types. An empty array indicates contributions are not sup
        #
        #   @param description [String, nil]
        #
        #   @param employee_deduction [Array<Symbol, FinchAPI::Models::HRIS::SupportedBenefit::EmployeeDeduction, nil>, nil] Supported deduction types. An empty array indicates deductions are not supported
        #
        #   @param frequencies [Array<Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil>] The list of frequencies supported by the provider for this benefit
        #
        #   @param catch_up [Boolean, nil] Whether the provider supports catch up for this benefit. This field will only be
        #
        #   @param hsa_contribution_limit [Array<Symbol, FinchAPI::Models::HRIS::SupportedBenefit::HsaContributionLimit, nil>, nil] Whether the provider supports HSA contribution limits. Empty if this feature is

        module CompanyContribution
          extend FinchAPI::Internal::Type::Enum

          FIXED = :fixed
          PERCENT = :percent
          TIERED = :tiered

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module EmployeeDeduction
          extend FinchAPI::Internal::Type::Enum

          FIXED = :fixed
          PERCENT = :percent

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module HsaContributionLimit
          extend FinchAPI::Internal::Type::Enum

          FAMILY = :family
          INDIVIDUAL = :individual

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
