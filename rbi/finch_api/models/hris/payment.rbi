# typed: strong

module FinchAPI
  module Models
    module HRIS
      class Payment < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(FinchAPI::HRIS::Payment, FinchAPI::Internal::AnyHash)
          end

        # The unique id for the payment.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(FinchAPI::Money)) }
        attr_reader :company_debit

        sig { params(company_debit: T.nilable(FinchAPI::Money::OrHash)).void }
        attr_writer :company_debit

        sig { returns(T.nilable(String)) }
        attr_accessor :debit_date

        sig { returns(T.nilable(FinchAPI::Money)) }
        attr_reader :employee_taxes

        sig { params(employee_taxes: T.nilable(FinchAPI::Money::OrHash)).void }
        attr_writer :employee_taxes

        sig { returns(T.nilable(FinchAPI::Money)) }
        attr_reader :employer_taxes

        sig { params(employer_taxes: T.nilable(FinchAPI::Money::OrHash)).void }
        attr_writer :employer_taxes

        sig { returns(T.nilable(FinchAPI::Money)) }
        attr_reader :gross_pay

        sig { params(gross_pay: T.nilable(FinchAPI::Money::OrHash)).void }
        attr_writer :gross_pay

        # Array of every individual on this payment.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :individual_ids

        sig { returns(T.nilable(FinchAPI::Money)) }
        attr_reader :net_pay

        sig { params(net_pay: T.nilable(FinchAPI::Money::OrHash)).void }
        attr_writer :net_pay

        sig { returns(T.nilable(String)) }
        attr_accessor :pay_date

        # List of pay frequencies associated with this payment.
        sig do
          returns(
            T.nilable(
              T::Array[FinchAPI::HRIS::Payment::PayFrequency::TaggedSymbol]
            )
          )
        end
        attr_accessor :pay_frequencies

        # Array of the Finch id (uuidv4) of every pay group associated with this payment.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :pay_group_ids

        # The pay period object.
        sig { returns(T.nilable(FinchAPI::HRIS::Payment::PayPeriod)) }
        attr_reader :pay_period

        sig do
          params(
            pay_period: T.nilable(FinchAPI::HRIS::Payment::PayPeriod::OrHash)
          ).void
        end
        attr_writer :pay_period

        sig do
          params(
            id: String,
            company_debit: T.nilable(FinchAPI::Money::OrHash),
            debit_date: T.nilable(String),
            employee_taxes: T.nilable(FinchAPI::Money::OrHash),
            employer_taxes: T.nilable(FinchAPI::Money::OrHash),
            gross_pay: T.nilable(FinchAPI::Money::OrHash),
            individual_ids: T.nilable(T::Array[String]),
            net_pay: T.nilable(FinchAPI::Money::OrHash),
            pay_date: T.nilable(String),
            pay_frequencies:
              T.nilable(
                T::Array[FinchAPI::HRIS::Payment::PayFrequency::OrSymbol]
              ),
            pay_group_ids: T.nilable(T::Array[String]),
            pay_period: T.nilable(FinchAPI::HRIS::Payment::PayPeriod::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique id for the payment.
          id:,
          company_debit:,
          debit_date:,
          employee_taxes:,
          employer_taxes:,
          gross_pay:,
          # Array of every individual on this payment.
          individual_ids:,
          net_pay:,
          pay_date:,
          # List of pay frequencies associated with this payment.
          pay_frequencies:,
          # Array of the Finch id (uuidv4) of every pay group associated with this payment.
          pay_group_ids:,
          # The pay period object.
          pay_period:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              company_debit: T.nilable(FinchAPI::Money),
              debit_date: T.nilable(String),
              employee_taxes: T.nilable(FinchAPI::Money),
              employer_taxes: T.nilable(FinchAPI::Money),
              gross_pay: T.nilable(FinchAPI::Money),
              individual_ids: T.nilable(T::Array[String]),
              net_pay: T.nilable(FinchAPI::Money),
              pay_date: T.nilable(String),
              pay_frequencies:
                T.nilable(
                  T::Array[FinchAPI::HRIS::Payment::PayFrequency::TaggedSymbol]
                ),
              pay_group_ids: T.nilable(T::Array[String]),
              pay_period: T.nilable(FinchAPI::HRIS::Payment::PayPeriod)
            }
          )
        end
        def to_hash
        end

        module PayFrequency
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, FinchAPI::HRIS::Payment::PayFrequency)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ANNUALLY =
            T.let(
              :annually,
              FinchAPI::HRIS::Payment::PayFrequency::TaggedSymbol
            )
          BI_WEEKLY =
            T.let(
              :bi_weekly,
              FinchAPI::HRIS::Payment::PayFrequency::TaggedSymbol
            )
          DAILY =
            T.let(:daily, FinchAPI::HRIS::Payment::PayFrequency::TaggedSymbol)
          MONTHLY =
            T.let(:monthly, FinchAPI::HRIS::Payment::PayFrequency::TaggedSymbol)
          OTHER =
            T.let(:other, FinchAPI::HRIS::Payment::PayFrequency::TaggedSymbol)
          QUARTERLY =
            T.let(
              :quarterly,
              FinchAPI::HRIS::Payment::PayFrequency::TaggedSymbol
            )
          SEMI_ANNUALLY =
            T.let(
              :semi_annually,
              FinchAPI::HRIS::Payment::PayFrequency::TaggedSymbol
            )
          SEMI_MONTHLY =
            T.let(
              :semi_monthly,
              FinchAPI::HRIS::Payment::PayFrequency::TaggedSymbol
            )
          WEEKLY =
            T.let(:weekly, FinchAPI::HRIS::Payment::PayFrequency::TaggedSymbol)

          sig do
            override.returns(
              T::Array[FinchAPI::HRIS::Payment::PayFrequency::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class PayPeriod < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::Payment::PayPeriod,
                FinchAPI::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :end_date

          sig { returns(T.nilable(String)) }
          attr_accessor :start_date

          # The pay period object.
          sig do
            params(
              end_date: T.nilable(String),
              start_date: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(end_date:, start_date:)
          end

          sig do
            override.returns(
              { end_date: T.nilable(String), start_date: T.nilable(String) }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
