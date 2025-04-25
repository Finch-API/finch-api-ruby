# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # The frequency of the benefit deduction/contribution.
      module BenefitFrequency
        extend FinchAPI::Internal::Type::Enum

        ONE_TIME = :one_time
        EVERY_PAYCHECK = :every_paycheck
        MONTHLY = :monthly

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
