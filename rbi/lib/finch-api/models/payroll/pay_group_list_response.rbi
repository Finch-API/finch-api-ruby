# typed: strong

module FinchAPI
  module Models
    module Payroll
      class PayGroupListResponse < FinchAPI::BaseModel
        # Finch id (uuidv4) for the pay group
        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # Name of the pay group
        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # List of pay frequencies associated with this pay group
        sig { returns(T.nilable(T::Array[Symbol])) }
        def pay_frequencies
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def pay_frequencies=(_)
        end

        sig { params(id: String, name: String, pay_frequencies: T::Array[Symbol]).returns(T.attached_class) }
        def self.new(id: nil, name: nil, pay_frequencies: nil)
        end

        sig { override.returns({id: String, name: String, pay_frequencies: T::Array[Symbol]}) }
        def to_hash
        end

        class PayFrequency < FinchAPI::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          ANNUALLY = :annually
          SEMI_ANNUALLY = :semi_annually
          QUARTERLY = :quarterly
          MONTHLY = :monthly
          SEMI_MONTHLY = :semi_monthly
          BI_WEEKLY = :bi_weekly
          WEEKLY = :weekly
          DAILY = :daily
          OTHER = :other
        end
      end
    end
  end
end
