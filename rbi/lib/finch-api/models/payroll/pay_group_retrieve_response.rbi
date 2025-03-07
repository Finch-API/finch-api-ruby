# typed: strong

module FinchAPI
  module Models
    module Payroll
      class PayGroupRetrieveResponse < FinchAPI::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T::Array[String]) }
        def individual_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def individual_ids=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(T::Array[Symbol]) }
        def pay_frequencies
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def pay_frequencies=(_)
        end

        sig do
          params(
            id: String,
            individual_ids: T::Array[String],
            name: String,
            pay_frequencies: T::Array[Symbol]
          ).void
        end
        def initialize(id:, individual_ids:, name:, pay_frequencies:)
        end

        sig do
          override
            .returns({
                       id: String,
                       individual_ids: T::Array[String],
                       name: String,
                       pay_frequencies: T::Array[Symbol]
                     })
        end
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
