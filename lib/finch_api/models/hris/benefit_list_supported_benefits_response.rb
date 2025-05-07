# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Benefits#list_supported_benefits
      class BenefitListSupportedBenefitsResponse < FinchAPI::Internal::Type::BaseModel
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
        #   @return [Array<Symbol, FinchAPI::Models::HRIS::BenefitListSupportedBenefitsResponse::CompanyContribution, nil>, nil]
        optional :company_contribution,
                 -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Models::HRIS::BenefitListSupportedBenefitsResponse::CompanyContribution, nil?: true] },
                 nil?: true

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute employee_deduction
        #   Supported deduction types. An empty array indicates deductions are not
        #   supported.
        #
        #   @return [Array<Symbol, FinchAPI::Models::HRIS::BenefitListSupportedBenefitsResponse::EmployeeDeduction, nil>, nil]
        optional :employee_deduction,
                 -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Models::HRIS::BenefitListSupportedBenefitsResponse::EmployeeDeduction, nil?: true] },
                 nil?: true

        # @!attribute frequencies
        #   The list of frequencies supported by the provider for this benefit
        #
        #   @return [Array<Symbol, FinchAPI::HRIS::BenefitFrequency, nil>, nil]
        optional :frequencies,
                 -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::HRIS::BenefitFrequency, nil?: true] }

        # @!attribute hsa_contribution_limit
        #   Whether the provider supports HSA contribution limits. Empty if this feature is
        #   not supported for the benefit. This array only has values for HSA benefits.
        #
        #   @return [Array<Symbol, FinchAPI::Models::HRIS::BenefitListSupportedBenefitsResponse::HsaContributionLimit, nil>, nil]
        optional :hsa_contribution_limit,
                 -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Models::HRIS::BenefitListSupportedBenefitsResponse::HsaContributionLimit, nil?: true] },
                 nil?: true

        # @!method initialize(annual_maximum: nil, catch_up: nil, company_contribution: nil, description: nil, employee_deduction: nil, frequencies: nil, hsa_contribution_limit: nil)
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::HRIS::BenefitListSupportedBenefitsResponse} for more details.
        #
        #   @param annual_maximum [Boolean, nil] Whether the provider supports an annual maximum for this benefit.
        #
        #   @param catch_up [Boolean, nil] Whether the provider supports catch up for this benefit. This field will only be
        #
        #   @param company_contribution [Array<Symbol, FinchAPI::Models::HRIS::BenefitListSupportedBenefitsResponse::CompanyContribution, nil>, nil] Supported contribution types. An empty array indicates contributions are not sup
        #
        #   @param description [String, nil]
        #
        #   @param employee_deduction [Array<Symbol, FinchAPI::Models::HRIS::BenefitListSupportedBenefitsResponse::EmployeeDeduction, nil>, nil] Supported deduction types. An empty array indicates deductions are not supported
        #
        #   @param frequencies [Array<Symbol, FinchAPI::HRIS::BenefitFrequency, nil>] The list of frequencies supported by the provider for this benefit
        #
        #   @param hsa_contribution_limit [Array<Symbol, FinchAPI::Models::HRIS::BenefitListSupportedBenefitsResponse::HsaContributionLimit, nil>, nil] Whether the provider supports HSA contribution limits. Empty if this feature is

        module CompanyContribution
          extend FinchAPI::Internal::Type::Enum

          FIXED = :fixed
          PERCENT = :percent

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

          INDIVIDUAL = :individual
          FAMILY = :family

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
