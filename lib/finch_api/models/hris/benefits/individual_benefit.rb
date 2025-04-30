# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        # @see FinchAPI::Resources::HRIS::Benefits::Individuals#retrieve_many_benefits
        class IndividualBenefit < FinchAPI::Internal::Type::BaseModel
          # @!attribute body
          #
          #   @return [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body, nil]
          optional :body, -> { FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body }

          # @!attribute code
          #
          #   @return [Integer, nil]
          optional :code, Integer

          # @!attribute individual_id
          #
          #   @return [String, nil]
          optional :individual_id, String

          # @!method initialize(body: nil, code: nil, individual_id: nil)
          #   @param body [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body]
          #   @param code [Integer]
          #   @param individual_id [String]

          # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit#body
          class Body < FinchAPI::Internal::Type::BaseModel
            # @!attribute annual_maximum
            #   If the benefit supports annual maximum, the amount in cents for this individual.
            #
            #   @return [Integer, nil]
            optional :annual_maximum, Integer, nil?: true

            # @!attribute catch_up
            #   If the benefit supports catch up (401k, 403b, etc.), whether catch up is enabled
            #   for this individual.
            #
            #   @return [Boolean, nil]
            optional :catch_up, FinchAPI::Internal::Type::Boolean, nil?: true

            # @!attribute company_contribution
            #
            #   @return [FinchAPI::Models::HRIS::BenefitContribution, nil]
            optional :company_contribution, -> { FinchAPI::Models::HRIS::BenefitContribution }, nil?: true

            # @!attribute employee_deduction
            #
            #   @return [FinchAPI::Models::HRIS::BenefitContribution, nil]
            optional :employee_deduction, -> { FinchAPI::Models::HRIS::BenefitContribution }, nil?: true

            # @!attribute hsa_contribution_limit
            #   Type for HSA contribution limit if the benefit is a HSA.
            #
            #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit, nil]
            optional :hsa_contribution_limit,
                     enum: -> { FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit },
                     nil?: true

            # @!method initialize(annual_maximum: nil, catch_up: nil, company_contribution: nil, employee_deduction: nil, hsa_contribution_limit: nil)
            #   Some parameter documentations has been truncated, see
            #   {FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body} for more details.
            #
            #   @param annual_maximum [Integer, nil] If the benefit supports annual maximum, the amount in cents for this individual.
            #   ...
            #
            #   @param catch_up [Boolean, nil] If the benefit supports catch up (401k, 403b, etc.), whether catch up is enabled
            #   ...
            #
            #   @param company_contribution [FinchAPI::Models::HRIS::BenefitContribution, nil]
            #
            #   @param employee_deduction [FinchAPI::Models::HRIS::BenefitContribution, nil]
            #
            #   @param hsa_contribution_limit [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit, nil] Type for HSA contribution limit if the benefit is a HSA.

            # Type for HSA contribution limit if the benefit is a HSA.
            #
            # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body#hsa_contribution_limit
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

      IndividualBenefit = Benefits::IndividualBenefit
    end
  end
end
