# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @abstract
      #
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
