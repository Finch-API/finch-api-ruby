# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitFrequency < FinchAPI::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ONE_TIME = :one_time
        EVERY_PAYCHECK = :every_paycheck
        MONTHLY = :monthly
      end
    end
  end
end
