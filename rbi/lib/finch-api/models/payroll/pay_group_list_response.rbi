# typed: strong

module FinchAPI
  module Models
    module Payroll
      class PayGroupListResponse < FinchAPI::BaseModel
        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(T.nilable(T::Array[Symbol])) }
        def pay_frequencies
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def pay_frequencies=(_)
        end

        sig { params(id: String, name: String, pay_frequencies: T::Array[Symbol]).void }
        def initialize(id: nil, name: nil, pay_frequencies: nil)
        end

        sig { override.returns({id: String, name: String, pay_frequencies: T::Array[Symbol]}) }
        def to_hash
        end

        class PayFrequency < FinchAPI::Enum
          abstract!

          ANNUALLY = :annually
          SEMI_ANNUALLY = :semi_annually
          QUARTERLY = :quarterly
          MONTHLY = :monthly
          SEMI_MONTHLY = :semi_monthly
          BI_WEEKLY = :bi_weekly
          WEEKLY = :weekly
          DAILY = :daily
          OTHER = :other

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
