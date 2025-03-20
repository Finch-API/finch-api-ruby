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
      end
    end
  end
end
