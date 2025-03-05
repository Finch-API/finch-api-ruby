# typed: strong

module FinchAPI
  module Models
    module HRIS
      class Payment < FinchAPI::BaseModel
        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Money)) }
        def company_debit
        end

        sig { params(_: T.nilable(FinchAPI::Models::Money)).returns(T.nilable(FinchAPI::Models::Money)) }
        def company_debit=(_)
        end

        sig { returns(T.nilable(String)) }
        def debit_date
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def debit_date=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Money)) }
        def employee_taxes
        end

        sig { params(_: T.nilable(FinchAPI::Models::Money)).returns(T.nilable(FinchAPI::Models::Money)) }
        def employee_taxes=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Money)) }
        def employer_taxes
        end

        sig { params(_: T.nilable(FinchAPI::Models::Money)).returns(T.nilable(FinchAPI::Models::Money)) }
        def employer_taxes=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Money)) }
        def gross_pay
        end

        sig { params(_: T.nilable(FinchAPI::Models::Money)).returns(T.nilable(FinchAPI::Models::Money)) }
        def gross_pay=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def individual_ids
        end

        sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def individual_ids=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Money)) }
        def net_pay
        end

        sig { params(_: T.nilable(FinchAPI::Models::Money)).returns(T.nilable(FinchAPI::Models::Money)) }
        def net_pay=(_)
        end

        sig { returns(T.nilable(String)) }
        def pay_date
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def pay_date=(_)
        end

        sig { returns(T.nilable(T::Array[Symbol])) }
        def pay_frequencies
        end

        sig { params(_: T.nilable(T::Array[Symbol])).returns(T.nilable(T::Array[Symbol])) }
        def pay_frequencies=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def pay_group_ids
        end

        sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def pay_group_ids=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::HRIS::Payment::PayPeriod)) }
        def pay_period
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::HRIS::Payment::PayPeriod))
            .returns(T.nilable(FinchAPI::Models::HRIS::Payment::PayPeriod))
        end
        def pay_period=(_)
        end

        sig do
          params(
            id: String,
            company_debit: T.nilable(FinchAPI::Models::Money),
            debit_date: T.nilable(String),
            employee_taxes: T.nilable(FinchAPI::Models::Money),
            employer_taxes: T.nilable(FinchAPI::Models::Money),
            gross_pay: T.nilable(FinchAPI::Models::Money),
            individual_ids: T.nilable(T::Array[String]),
            net_pay: T.nilable(FinchAPI::Models::Money),
            pay_date: T.nilable(String),
            pay_frequencies: T.nilable(T::Array[Symbol]),
            pay_group_ids: T.nilable(T::Array[String]),
            pay_period: T.nilable(FinchAPI::Models::HRIS::Payment::PayPeriod)
          )
            .void
        end
        def initialize(
          id: nil,
          company_debit: nil,
          debit_date: nil,
          employee_taxes: nil,
          employer_taxes: nil,
          gross_pay: nil,
          individual_ids: nil,
          net_pay: nil,
          pay_date: nil,
          pay_frequencies: nil,
          pay_group_ids: nil,
          pay_period: nil
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                company_debit: T.nilable(FinchAPI::Models::Money),
                debit_date: T.nilable(String),
                employee_taxes: T.nilable(FinchAPI::Models::Money),
                employer_taxes: T.nilable(FinchAPI::Models::Money),
                gross_pay: T.nilable(FinchAPI::Models::Money),
                individual_ids: T.nilable(T::Array[String]),
                net_pay: T.nilable(FinchAPI::Models::Money),
                pay_date: T.nilable(String),
                pay_frequencies: T.nilable(T::Array[Symbol]),
                pay_group_ids: T.nilable(T::Array[String]),
                pay_period: T.nilable(FinchAPI::Models::HRIS::Payment::PayPeriod)
              }
            )
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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class PayPeriod < FinchAPI::BaseModel
          sig { returns(T.nilable(String)) }
          def end_date
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def end_date=(_)
          end

          sig { returns(T.nilable(String)) }
          def start_date
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def start_date=(_)
          end

          sig { params(end_date: T.nilable(String), start_date: T.nilable(String)).void }
          def initialize(end_date: nil, start_date: nil)
          end

          sig { override.returns({end_date: T.nilable(String), start_date: T.nilable(String)}) }
          def to_hash
          end
        end
      end
    end
  end
end
