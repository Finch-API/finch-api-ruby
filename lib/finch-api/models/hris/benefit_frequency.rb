# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @abstract
      #
      # @example
      # ```ruby
      # case benefit_frequency
      # in :one_time
      #   # ...
      # in :every_paycheck
      #   # ...
      # in :monthly
      #   # ...
      # end
      # ```
      class BenefitFrequency < FinchAPI::Enum
        ONE_TIME = :one_time
        EVERY_PAYCHECK = :every_paycheck
        MONTHLY = :monthly

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
