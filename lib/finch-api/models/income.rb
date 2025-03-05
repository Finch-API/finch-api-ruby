# frozen_string_literal: true

module FinchAPI
  module Models
    class Income < FinchAPI::BaseModel
      # @!attribute amount
      #   The income amount in cents.
      #
      #   @return [Integer, nil]
      optional :amount, Integer, nil?: true

      # @!attribute currency
      #   The currency code.
      #
      #   @return [String, nil]
      optional :currency, String, nil?: true

      # @!attribute effective_date
      #   The date the income amount went into effect.
      #
      #   @return [String, nil]
      optional :effective_date, String, nil?: true

      # @!attribute unit
      #   The income unit of payment. Options: `yearly`, `quarterly`, `monthly`,
      #     `semi_monthly`, `bi_weekly`, `weekly`, `daily`, `hourly`, and `fixed`.
      #
      #   @return [Symbol, FinchAPI::Models::Income::Unit, nil]
      optional :unit, enum: -> { FinchAPI::Models::Income::Unit }, nil?: true

      # @!parse
      #   # The employee's income as reported by the provider. This may not always be
      #   #   annualized income, but may be in units of bi-weekly, semi-monthly, daily, etc,
      #   #   depending on what information the provider returns.
      #   #
      #   # @param amount [Integer, nil]
      #   # @param currency [String, nil]
      #   # @param effective_date [String, nil]
      #   # @param unit [Symbol, FinchAPI::Models::Income::Unit, nil]
      #   #
      #   def initialize(amount: nil, currency: nil, effective_date: nil, unit: nil, **) = super

      # def initialize: (Hash | FinchAPI::BaseModel) -> void

      # @abstract
      #
      # The income unit of payment. Options: `yearly`, `quarterly`, `monthly`,
      #   `semi_monthly`, `bi_weekly`, `weekly`, `daily`, `hourly`, and `fixed`.
      #
      # @example
      # ```ruby
      # case unit
      # in :yearly
      #   # ...
      # in :quarterly
      #   # ...
      # in :monthly
      #   # ...
      # in :semi_monthly
      #   # ...
      # in :bi_weekly
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class Unit < FinchAPI::Enum
        YEARLY = :yearly
        QUARTERLY = :quarterly
        MONTHLY = :monthly
        SEMI_MONTHLY = :semi_monthly
        BI_WEEKLY = :bi_weekly
        WEEKLY = :weekly
        DAILY = :daily
        HOURLY = :hourly
        FIXED = :fixed

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
