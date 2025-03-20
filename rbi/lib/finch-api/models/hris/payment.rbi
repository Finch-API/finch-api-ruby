# typed: strong

module FinchAPI
  module Models
    module HRIS
      class Payment < FinchAPI::BaseModel
        # The unique id for the payment.
        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Money)) }
        def company_debit
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Util::AnyHash)))
        end
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

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Util::AnyHash)))
        end
        def employee_taxes=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Money)) }
        def employer_taxes
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Util::AnyHash)))
        end
        def employer_taxes=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Money)) }
        def gross_pay
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Util::AnyHash)))
        end
        def gross_pay=(_)
        end

        # Array of every individual on this payment.
        sig { returns(T.nilable(T::Array[String])) }
        def individual_ids
        end

        sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def individual_ids=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Money)) }
        def net_pay
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Util::AnyHash)))
        end
        def net_pay=(_)
        end

        sig { returns(T.nilable(String)) }
        def pay_date
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def pay_date=(_)
        end

        # List of pay frequencies associated with this payment.
        sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol])) }
        def pay_frequencies
        end

        sig do
          params(_: T.nilable(T::Array[FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol]))
            .returns(T.nilable(T::Array[FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol]))
        end
        def pay_frequencies=(_)
        end

        # Array of the Finch id (uuidv4) of every pay group associated with this payment.
        sig { returns(T.nilable(T::Array[String])) }
        def pay_group_ids
        end

        sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def pay_group_ids=(_)
        end

        # The pay period object.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::Payment::PayPeriod)) }
        def pay_period
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::HRIS::Payment::PayPeriod, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::HRIS::Payment::PayPeriod, FinchAPI::Util::AnyHash)))
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
            pay_frequencies: T.nilable(T::Array[FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol]),
            pay_group_ids: T.nilable(T::Array[String]),
            pay_period: T.nilable(FinchAPI::Models::HRIS::Payment::PayPeriod)
          )
            .returns(T.attached_class)
        end
        def self.new(
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
                pay_frequencies: T.nilable(T::Array[FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol]),
                pay_group_ids: T.nilable(T::Array[String]),
                pay_period: T.nilable(FinchAPI::Models::HRIS::Payment::PayPeriod)
              }
            )
        end
        def to_hash
        end

        module PayFrequency
          extend FinchAPI::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::Payment::PayFrequency) }
          OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol) }

          ANNUALLY = T.let(:annually, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
          SEMI_ANNUALLY = T.let(:semi_annually, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
          MONTHLY = T.let(:monthly, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
          SEMI_MONTHLY = T.let(:semi_monthly, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
          BI_WEEKLY = T.let(:bi_weekly, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
          WEEKLY = T.let(:weekly, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
          DAILY = T.let(:daily, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
          OTHER = T.let(:other, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
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

          # The pay period object.
          sig { params(end_date: T.nilable(String), start_date: T.nilable(String)).returns(T.attached_class) }
          def self.new(end_date: nil, start_date: nil)
          end

          sig { override.returns({end_date: T.nilable(String), start_date: T.nilable(String)}) }
          def to_hash
          end
        end
      end
    end
  end
end
