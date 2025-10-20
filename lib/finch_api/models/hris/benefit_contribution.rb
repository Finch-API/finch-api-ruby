# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module BenefitContribution
        extend FinchAPI::Internal::Type::Union

        variant -> { FinchAPI::HRIS::BenefitContribution::UnionMember0 }

        variant -> { FinchAPI::HRIS::BenefitContribution::UnionMember1 }

        variant -> { FinchAPI::HRIS::BenefitContribution::UnionMember2 }

        class UnionMember0 < FinchAPI::Internal::Type::BaseModel
          # @!attribute amount
          #   Contribution amount in cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute type
          #   Fixed contribution type.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::BenefitContribution::UnionMember0::Type]
          required :type, enum: -> { FinchAPI::HRIS::BenefitContribution::UnionMember0::Type }

          # @!method initialize(amount:, type:)
          #   @param amount [Integer] Contribution amount in cents.
          #
          #   @param type [Symbol, FinchAPI::Models::HRIS::BenefitContribution::UnionMember0::Type] Fixed contribution type.

          # Fixed contribution type.
          #
          # @see FinchAPI::Models::HRIS::BenefitContribution::UnionMember0#type
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
          #   @return [Symbol, FinchAPI::Models::HRIS::BenefitContribution::UnionMember1::Type]
          required :type, enum: -> { FinchAPI::HRIS::BenefitContribution::UnionMember1::Type }

          # @!method initialize(amount:, type:)
          #   @param amount [Integer] Contribution amount in basis points (1/100th of a percent).
          #
          #   @param type [Symbol, FinchAPI::Models::HRIS::BenefitContribution::UnionMember1::Type] Percentage contribution type.

          # Percentage contribution type.
          #
          # @see FinchAPI::Models::HRIS::BenefitContribution::UnionMember1#type
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
          #   @return [Array<FinchAPI::Models::HRIS::BenefitContribution::UnionMember2::Tier>]
          required :tiers,
                   -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::BenefitContribution::UnionMember2::Tier] }

          # @!attribute type
          #   Tiered contribution type (only valid for company_contribution).
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::BenefitContribution::UnionMember2::Type]
          required :type, enum: -> { FinchAPI::HRIS::BenefitContribution::UnionMember2::Type }

          # @!method initialize(tiers:, type:)
          #   Some parameter documentations has been truncated, see
          #   {FinchAPI::Models::HRIS::BenefitContribution::UnionMember2} for more details.
          #
          #   @param tiers [Array<FinchAPI::Models::HRIS::BenefitContribution::UnionMember2::Tier>] Array of tier objects defining employer match tiers based on employee contributi
          #
          #   @param type [Symbol, FinchAPI::Models::HRIS::BenefitContribution::UnionMember2::Type] Tiered contribution type (only valid for company_contribution).

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
          # @see FinchAPI::Models::HRIS::BenefitContribution::UnionMember2#type
          module Type
            extend FinchAPI::Internal::Type::Enum

            TIERED = :tiered

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(FinchAPI::Models::HRIS::BenefitContribution::UnionMember0, FinchAPI::Models::HRIS::BenefitContribution::UnionMember1, FinchAPI::Models::HRIS::BenefitContribution::UnionMember2)]
      end
    end
  end
end
