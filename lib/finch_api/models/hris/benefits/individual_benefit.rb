# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        # @see FinchAPI::Resources::HRIS::Benefits::Individuals#retrieve_many_benefits
        class IndividualBenefit < FinchAPI::Internal::Type::BaseModel
          # @!attribute body
          #
          #   @return [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::BatchError]
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
          #   @param body [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::BatchError]
          #   @param code [Integer]
          #   @param individual_id [String]

          # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit#body
          module Body
            extend FinchAPI::Internal::Type::Union

            variant -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit }

            variant -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::BatchError }

            class IndividualBenefit < FinchAPI::Internal::Type::BaseModel
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
              #   Company contribution configuration. Supports fixed amounts (in cents),
              #   percentage-based contributions (in basis points where 100 = 1%), or tiered
              #   matching structures.
              #
              #   @return [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionFixed, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionPercent, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionTiered, nil]
              required :company_contribution,
                       union: -> {
                         FinchAPI::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution
                       },
                       nil?: true

              # @!attribute employee_deduction
              #   Employee deduction configuration. Supports both fixed amounts (in cents) and
              #   percentage-based contributions (in basis points where 100 = 1%).
              #
              #   @return [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionFixed, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionPercent, nil]
              required :employee_deduction,
                       union: -> {
                         FinchAPI::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction
                       },
                       nil?: true

              # @!attribute hsa_contribution_limit
              #   Type for HSA contribution limit if the benefit is a HSA.
              #
              #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::HsaContributionLimit, nil]
              optional :hsa_contribution_limit,
                       enum: -> {
                         FinchAPI::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::HsaContributionLimit
                       },
                       nil?: true

              # @!method initialize(annual_maximum:, catch_up:, company_contribution:, employee_deduction:, hsa_contribution_limit: nil)
              #   Some parameter documentations has been truncated, see
              #   {FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit}
              #   for more details.
              #
              #   @param annual_maximum [Integer, nil] If the benefit supports annual maximum, the amount in cents for this individual.
              #
              #   @param catch_up [Boolean, nil] If the benefit supports catch up (401k, 403b, etc.), whether catch up is enabled
              #
              #   @param company_contribution [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionFixed, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionPercent, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionTiered, nil] Company contribution configuration. Supports fixed amounts (in cents), percentag
              #
              #   @param employee_deduction [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionFixed, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionPercent, nil] Employee deduction configuration. Supports both fixed amounts (in cents) and per
              #
              #   @param hsa_contribution_limit [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::HsaContributionLimit, nil] Type for HSA contribution limit if the benefit is a HSA.

              # Company contribution configuration. Supports fixed amounts (in cents),
              # percentage-based contributions (in basis points where 100 = 1%), or tiered
              # matching structures.
              #
              # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit#company_contribution
              module CompanyContribution
                extend FinchAPI::Internal::Type::Union

                variant -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionFixed }

                variant -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionPercent }

                variant -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionTiered }

                class CompanyContributionFixed < FinchAPI::Internal::Type::BaseModel
                  # @!attribute amount
                  #   Contribution amount in cents (for type=fixed) or basis points (for type=percent,
                  #   where 100 = 1%). Not used for type=tiered.
                  #
                  #   @return [Integer]
                  required :amount, Integer

                  # @!attribute type
                  #   Contribution type. Supported values: "fixed" (amount in cents), "percent"
                  #   (amount in basis points), or "tiered" (multi-tier matching).
                  #
                  #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionFixed::Type]
                  required :type,
                           enum: -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionFixed::Type }

                  # @!method initialize(amount:, type:)
                  #   Some parameter documentations has been truncated, see
                  #   {FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionFixed}
                  #   for more details.
                  #
                  #   @param amount [Integer] Contribution amount in cents (for type=fixed) or basis points (for type=percent,
                  #
                  #   @param type [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionFixed::Type] Contribution type. Supported values: "fixed" (amount in cents), "percent" (amoun

                  # Contribution type. Supported values: "fixed" (amount in cents), "percent"
                  # (amount in basis points), or "tiered" (multi-tier matching).
                  #
                  # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionFixed#type
                  module Type
                    extend FinchAPI::Internal::Type::Enum

                    FIXED = :fixed

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CompanyContributionPercent < FinchAPI::Internal::Type::BaseModel
                  # @!attribute amount
                  #   Contribution amount in cents (for type=fixed) or basis points (for type=percent,
                  #   where 100 = 1%). Not used for type=tiered.
                  #
                  #   @return [Integer]
                  required :amount, Integer

                  # @!attribute type
                  #   Contribution type. Supported values: "fixed" (amount in cents), "percent"
                  #   (amount in basis points), or "tiered" (multi-tier matching).
                  #
                  #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionPercent::Type]
                  required :type,
                           enum: -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionPercent::Type }

                  # @!method initialize(amount:, type:)
                  #   Some parameter documentations has been truncated, see
                  #   {FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionPercent}
                  #   for more details.
                  #
                  #   @param amount [Integer] Contribution amount in cents (for type=fixed) or basis points (for type=percent,
                  #
                  #   @param type [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionPercent::Type] Contribution type. Supported values: "fixed" (amount in cents), "percent" (amoun

                  # Contribution type. Supported values: "fixed" (amount in cents), "percent"
                  # (amount in basis points), or "tiered" (multi-tier matching).
                  #
                  # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionPercent#type
                  module Type
                    extend FinchAPI::Internal::Type::Enum

                    PERCENT = :percent

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CompanyContributionTiered < FinchAPI::Internal::Type::BaseModel
                  # @!attribute tiers
                  #   Array of tier objects defining employer match tiers based on employee
                  #   contribution thresholds. Required when type=tiered.
                  #
                  #   @return [Array<FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionTiered::Tier>]
                  required :tiers,
                           -> do
                             FinchAPI::Internal::Type::ArrayOf[
                               FinchAPI::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionTiered::Tier
                             ]
                           end

                  # @!attribute type
                  #   Contribution type. Supported values: "fixed" (amount in cents), "percent"
                  #   (amount in basis points), or "tiered" (multi-tier matching).
                  #
                  #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionTiered::Type]
                  required :type,
                           enum: -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionTiered::Type }

                  # @!method initialize(tiers:, type:)
                  #   Some parameter documentations has been truncated, see
                  #   {FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionTiered}
                  #   for more details.
                  #
                  #   @param tiers [Array<FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionTiered::Tier>] Array of tier objects defining employer match tiers based on employee contributi
                  #
                  #   @param type [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionTiered::Type] Contribution type. Supported values: "fixed" (amount in cents), "percent" (amoun

                  class Tier < FinchAPI::Internal::Type::BaseModel
                    # @!attribute match
                    #
                    #   @return [Integer]
                    required :match, Integer

                    # @!attribute threshold
                    #
                    #   @return [Integer]
                    required :threshold, Integer

                    # @!method initialize(match:, threshold:)
                    #   @param match [Integer]
                    #   @param threshold [Integer]
                  end

                  # Contribution type. Supported values: "fixed" (amount in cents), "percent"
                  # (amount in basis points), or "tiered" (multi-tier matching).
                  #
                  # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionTiered#type
                  module Type
                    extend FinchAPI::Internal::Type::Enum

                    TIERED = :tiered

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionFixed, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionPercent, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::CompanyContribution::CompanyContributionTiered)]
              end

              # Employee deduction configuration. Supports both fixed amounts (in cents) and
              # percentage-based contributions (in basis points where 100 = 1%).
              #
              # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit#employee_deduction
              module EmployeeDeduction
                extend FinchAPI::Internal::Type::Union

                variant -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionFixed }

                variant -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionPercent }

                class EmployeeDeductionContributionFixed < FinchAPI::Internal::Type::BaseModel
                  # @!attribute amount
                  #   Contribution amount in cents (for type=fixed) or basis points (for type=percent,
                  #   where 100 = 1%).
                  #
                  #   @return [Integer]
                  required :amount, Integer

                  # @!attribute type
                  #   Contribution type. Supported values: "fixed" (amount in cents) or "percent"
                  #   (amount in basis points).
                  #
                  #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionFixed::Type]
                  required :type,
                           enum: -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionFixed::Type }

                  # @!method initialize(amount:, type:)
                  #   Some parameter documentations has been truncated, see
                  #   {FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionFixed}
                  #   for more details.
                  #
                  #   @param amount [Integer] Contribution amount in cents (for type=fixed) or basis points (for type=percent,
                  #
                  #   @param type [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionFixed::Type] Contribution type. Supported values: "fixed" (amount in cents) or "percent" (amo

                  # Contribution type. Supported values: "fixed" (amount in cents) or "percent"
                  # (amount in basis points).
                  #
                  # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionFixed#type
                  module Type
                    extend FinchAPI::Internal::Type::Enum

                    FIXED = :fixed

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class EmployeeDeductionContributionPercent < FinchAPI::Internal::Type::BaseModel
                  # @!attribute amount
                  #   Contribution amount in cents (for type=fixed) or basis points (for type=percent,
                  #   where 100 = 1%).
                  #
                  #   @return [Integer]
                  required :amount, Integer

                  # @!attribute type
                  #   Contribution type. Supported values: "fixed" (amount in cents) or "percent"
                  #   (amount in basis points).
                  #
                  #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionPercent::Type]
                  required :type,
                           enum: -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionPercent::Type }

                  # @!method initialize(amount:, type:)
                  #   Some parameter documentations has been truncated, see
                  #   {FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionPercent}
                  #   for more details.
                  #
                  #   @param amount [Integer] Contribution amount in cents (for type=fixed) or basis points (for type=percent,
                  #
                  #   @param type [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionPercent::Type] Contribution type. Supported values: "fixed" (amount in cents) or "percent" (amo

                  # Contribution type. Supported values: "fixed" (amount in cents) or "percent"
                  # (amount in basis points).
                  #
                  # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionPercent#type
                  module Type
                    extend FinchAPI::Internal::Type::Enum

                    PERCENT = :percent

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionFixed, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit::EmployeeDeduction::EmployeeDeductionContributionPercent)]
              end

              # Type for HSA contribution limit if the benefit is a HSA.
              #
              # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit#hsa_contribution_limit
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
            #   @return [Array(FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::IndividualBenefit, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::BatchError)]
          end
        end
      end

      IndividualBenefit = Benefits::IndividualBenefit
    end
  end
end
