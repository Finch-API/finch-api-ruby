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
              #   @return [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2, nil]
              required :company_contribution,
                       union: -> {
                         FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution
                       },
                       nil?: true

              # @!attribute employee_deduction
              #
              #   @return [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1, nil]
              required :employee_deduction,
                       union: -> {
                         FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction
                       },
                       nil?: true

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
              #   @param company_contribution [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2, nil]
              #
              #   @param employee_deduction [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1, nil]
              #
              #   @param hsa_contribution_limit [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::HsaContributionLimit, nil] Type for HSA contribution limit if the benefit is a HSA.

              # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0#company_contribution
              module CompanyContribution
                extend FinchAPI::Internal::Type::Union

                variant -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0 }

                variant -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1 }

                variant -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2 }

                class UnionMember0 < FinchAPI::Internal::Type::BaseModel
                  # @!attribute amount
                  #   Contribution amount in cents.
                  #
                  #   @return [Integer]
                  required :amount, Integer

                  # @!attribute type
                  #   Fixed contribution type.
                  #
                  #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0::Type]
                  required :type,
                           enum: -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0::Type }

                  # @!method initialize(amount:, type:)
                  #   @param amount [Integer] Contribution amount in cents.
                  #
                  #   @param type [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0::Type] Fixed contribution type.

                  # Fixed contribution type.
                  #
                  # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0#type
                  module Type
                    extend FinchAPI::Internal::Type::Enum

                    FIXED = :fixed

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember1 < FinchAPI::Internal::Type::BaseModel
                  # @!attribute amount
                  #   Contribution amount in basis points (1/100th of a percent).
                  #
                  #   @return [Integer]
                  required :amount, Integer

                  # @!attribute type
                  #   Percentage contribution type.
                  #
                  #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1::Type]
                  required :type,
                           enum: -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1::Type }

                  # @!method initialize(amount:, type:)
                  #   @param amount [Integer] Contribution amount in basis points (1/100th of a percent).
                  #
                  #   @param type [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1::Type] Percentage contribution type.

                  # Percentage contribution type.
                  #
                  # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1#type
                  module Type
                    extend FinchAPI::Internal::Type::Enum

                    PERCENT = :percent

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember2 < FinchAPI::Internal::Type::BaseModel
                  # @!attribute tiers
                  #   Array of tier objects defining employer match tiers based on employee
                  #   contribution thresholds.
                  #
                  #   @return [Array<FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::Tier>]
                  required :tiers,
                           -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::Tier] }

                  # @!attribute type
                  #   Tiered contribution type (only valid for company_contribution).
                  #
                  #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::Type]
                  required :type,
                           enum: -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::Type }

                  # @!method initialize(tiers:, type:)
                  #   Some parameter documentations has been truncated, see
                  #   {FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2}
                  #   for more details.
                  #
                  #   @param tiers [Array<FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::Tier>] Array of tier objects defining employer match tiers based on employee contributi
                  #
                  #   @param type [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2::Type] Tiered contribution type (only valid for company_contribution).

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

                  # Tiered contribution type (only valid for company_contribution).
                  #
                  # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2#type
                  module Type
                    extend FinchAPI::Internal::Type::Enum

                    TIERED = :tiered

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember0, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember1, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::CompanyContribution::UnionMember2)]
              end

              # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0#employee_deduction
              module EmployeeDeduction
                extend FinchAPI::Internal::Type::Union

                variant -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0 }

                variant -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1 }

                class UnionMember0 < FinchAPI::Internal::Type::BaseModel
                  # @!attribute amount
                  #   Contribution amount in cents.
                  #
                  #   @return [Integer]
                  required :amount, Integer

                  # @!attribute type
                  #   Fixed contribution type.
                  #
                  #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0::Type]
                  required :type,
                           enum: -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0::Type }

                  # @!method initialize(amount:, type:)
                  #   @param amount [Integer] Contribution amount in cents.
                  #
                  #   @param type [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0::Type] Fixed contribution type.

                  # Fixed contribution type.
                  #
                  # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0#type
                  module Type
                    extend FinchAPI::Internal::Type::Enum

                    FIXED = :fixed

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember1 < FinchAPI::Internal::Type::BaseModel
                  # @!attribute amount
                  #   Contribution amount in basis points (1/100th of a percent).
                  #
                  #   @return [Integer]
                  required :amount, Integer

                  # @!attribute type
                  #   Percentage contribution type.
                  #
                  #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1::Type]
                  required :type,
                           enum: -> { FinchAPI::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1::Type }

                  # @!method initialize(amount:, type:)
                  #   @param amount [Integer] Contribution amount in basis points (1/100th of a percent).
                  #
                  #   @param type [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1::Type] Percentage contribution type.

                  # Percentage contribution type.
                  #
                  # @see FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1#type
                  module Type
                    extend FinchAPI::Internal::Type::Enum

                    PERCENT = :percent

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember0, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::UnionMember0::EmployeeDeduction::UnionMember1)]
              end

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
