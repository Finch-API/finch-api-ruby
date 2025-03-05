# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitFrequency < FinchAPI::Enum
        abstract!

        ONE_TIME = T.let(:one_time, T.nilable(Symbol))
        EVERY_PAYCHECK = T.let(:every_paycheck, T.nilable(Symbol))
        MONTHLY = T.let(:monthly, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
