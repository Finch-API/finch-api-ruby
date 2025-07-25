# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        # @see FinchAPI::Resources::HRIS::Benefits::Individuals#retrieve_many_benefits
        class IndividualBenefit < FinchAPI::Internal::Type::BaseModel
          # @!attribute body
          #
          #   @return [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::BatchError]
          required :body, union: -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body }

          # @!attribute code
          #
          #   @return [Integer]
          required :code, Integer

          # @!attribute individual_id
          #
          #   @return [String]
          required :individual_id, String

          # @!method initialize(body:, code:, individual_id:)
          #   @param body [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::BatchError]
          #   @param code [Integer]
          #   @param individual_id [String]

          # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit#body
          module Body
            extend FinchAPI::Internal::Type::Union

            variant -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0 }

            variant -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::BatchError }

            class UnionMember0 < FinchAPI::Internal::Type::BaseModel
              # @!attribute annual_maximum
              #   If the benefit supports annual maximum, the amount in cents for this individual.
              #
              #   @return [Integer, nil]
              required :annual_maximum, Integer, nil?: true

              # @!attribute catch_up
              #   If the benefit supports catch up (401k, 403b, etc.), whether catch up is enabled
              #   for this individual.
              #
              #   @return [Boolean, nil]
              required :catch_up, FinchAPI::Internal::Type::Boolean, nil?: true

              # @!attribute company_contribution
              #
              #   @return [FinchAPI::Models::HRIS::BenefitContribution, nil]
              required :company_contribution, -> { FinchAPI::HRIS::BenefitContribution }, nil?: true

              # @!attribute employee_deduction
              #
              #   @return [FinchAPI::Models::HRIS::BenefitContribution, nil]
              required :employee_deduction, -> { FinchAPI::HRIS::BenefitContribution }, nil?: true

              # @!attribute hsa_contribution_limit
              #   Type for HSA contribution limit if the benefit is a HSA.
              #
              #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit, nil]
              optional :hsa_contribution_limit,
                       enum: -> {
                         FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit
                       },
                       nil?: true

              # @!method initialize(annual_maximum:, catch_up:, company_contribution:, employee_deduction:, hsa_contribution_limit: nil)
              #   Some parameter documentations has been truncated, see
              #   {FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0} for
              #   more details.
              #
              #   @param annual_maximum [Integer, nil] If the benefit supports annual maximum, the amount in cents for this individual.
              #
              #   @param catch_up [Boolean, nil] If the benefit supports catch up (401k, 403b, etc.), whether catch up is enabled
              #
              #   @param company_contribution [FinchAPI::Models::HRIS::BenefitContribution, nil]
              #
              #   @param employee_deduction [FinchAPI::Models::HRIS::BenefitContribution, nil]
              #
              #   @param hsa_contribution_limit [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit, nil] Type for HSA contribution limit if the benefit is a HSA.

              # Type for HSA contribution limit if the benefit is a HSA.
              #
              # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0#hsa_contribution_limit
              module HsaContributionLimit
                extend FinchAPI::Internal::Type::Enum

                INDIVIDUAL = :individual
                FAMILY = :family

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class BatchError < FinchAPI::Internal::Type::BaseModel
              # @!attribute code
              #
              #   @return [Float]
              required :code, Float

              # @!attribute message
              #
              #   @return [String]
              required :message, String

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!attribute finch_code
              #
              #   @return [String, nil]
              optional :finch_code, String

              # @!method initialize(code:, message:, name:, finch_code: nil)
              #   @param code [Float]
              #   @param message [String]
              #   @param name [String]
              #   @param finch_code [String]
            end

            # @!method self.variants
            #   @return [Array(FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::BatchError)]
          end
        end
      end

      IndividualBenefit = Benefits::IndividualBenefit
    end
  end
end
