# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class BenefitContribution < FinchAPI::Internal::Type::BaseModel
        # @!attribute amount
        #   Contribution amount in cents (if `fixed`) or basis points (if `percent`).
        #
        #   @return [Integer, nil]
        optional :amount, Integer, nil?: true

        # @!attribute type
        #   Contribution type.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::BenefitContribution::Type, nil]
        optional :type, enum: -> { FinchAPI::Models::HRIS::BenefitContribution::Type }, nil?: true

        # @!parse
        #   # @param amount [Integer, nil]
        #   # @param type [Symbol, FinchAPI::Models::HRIS::BenefitContribution::Type, nil]
        #   #
        #   def initialize(amount: nil, type: nil, **) = super

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

        # Contribution type.
        #
        # @see FinchAPI::Models::HRIS::BenefitContribution#type
        module Type
          extend FinchAPI::Internal::Type::Enum

          FIXED = :fixed
          PERCENT = :percent

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
