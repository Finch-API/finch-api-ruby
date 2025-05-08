# frozen_string_literal: true

module FinchAPI
  module Models
    class Income < FinchAPI::Internal::Type::BaseModel
      # @!attribute amount
      #   The income amount in cents.
      #
      #   @return [Integer, nil]
      required :amount, Integer, nil?: true

      # @!attribute currency
      #   The currency code.
      #
      #   @return [String, nil]
      required :currency, String, nil?: true

      # @!attribute effective_date
      #   The date the income amount went into effect.
      #
      #   @return [String, nil]
      required :effective_date, String, nil?: true

      # @!attribute unit
      #   The income unit of payment. Options: `yearly`, `quarterly`, `monthly`,
      #   `semi_monthly`, `bi_weekly`, `weekly`, `daily`, `hourly`, and `fixed`.
      #
      #   @return [Symbol, FinchAPI::Income::Unit, nil]
      required :unit, enum: -> { FinchAPI::Income::Unit }, nil?: true

      # @!method initialize(amount:, currency:, effective_date:, unit:)
      #   Some parameter documentations has been truncated, see {FinchAPI::Income} for
      #   more details.
      #
      #   The employee's income as reported by the provider. This may not always be
      #   annualized income, but may be in units of bi-weekly, semi-monthly, daily, etc,
      #   depending on what information the provider returns.
      #
      #   @param amount [Integer, nil] The income amount in cents.
      #
      #   @param currency [String, nil] The currency code.
      #
      #   @param effective_date [String, nil] The date the income amount went into effect.
      #
      #   @param unit [Symbol, FinchAPI::Income::Unit, nil] The income unit of payment. Options: `yearly`, `quarterly`, `monthly`, `semi_mon

      # The income unit of payment. Options: `yearly`, `quarterly`, `monthly`,
      # `semi_monthly`, `bi_weekly`, `weekly`, `daily`, `hourly`, and `fixed`.
      #
      # @see FinchAPI::Income#unit
      module Unit
        extend FinchAPI::Internal::Type::Enum

        YEARLY = :yearly
        QUARTERLY = :quarterly
        MONTHLY = :monthly
        SEMI_MONTHLY = :semi_monthly
        BI_WEEKLY = :bi_weekly
        WEEKLY = :weekly
        DAILY = :daily
        HOURLY = :hourly
        FIXED = :fixed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
