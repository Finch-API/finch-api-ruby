# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class BenefitContribution < FinchAPI::Internal::Type::BaseModel
        # @!attribute amount
        #   Contribution amount in cents (if `fixed`) or basis points (if `percent`).
        #
        #   @return [Integer, nil]
        required :amount, Integer, nil?: true

        # @!attribute type
        #   Contribution type.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::BenefitContribution::Type, nil]
        required :type, enum: -> { FinchAPI::HRIS::BenefitContribution::Type }, nil?: true

        # @!method initialize(amount:, type:)
        #   @param amount [Integer, nil] Contribution amount in cents (if `fixed`) or basis points (if `percent`).
        #
        #   @param type [Symbol, FinchAPI::Models::HRIS::BenefitContribution::Type, nil] Contribution type.

        # Contribution type.
        #
        # @see FinchAPI::Models::HRIS::BenefitContribution#type
        module Type
          extend FinchAPI::Internal::Type::Enum

          FIXED = :fixed
          PERCENT = :percent

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
