# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module BenefitFrequency
        extend FinchAPI::Enum

        ONE_TIME = :one_time
        EVERY_PAYCHECK = :every_paycheck
        MONTHLY = :monthly

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
