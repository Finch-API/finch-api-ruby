# typed: strong

module FinchAPI
  module Models
    module HRIS
      class Payment < FinchAPI::BaseModel
        # The unique id for the payment.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(FinchAPI::Models::Money)) }
        attr_reader :company_debit

        sig { params(company_debit: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Internal::Util::AnyHash))).void }
        attr_writer :company_debit

        sig { returns(T.nilable(String)) }
        attr_accessor :debit_date

        sig { returns(T.nilable(FinchAPI::Models::Money)) }
        attr_reader :employee_taxes

        sig { params(employee_taxes: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Internal::Util::AnyHash))).void }
        attr_writer :employee_taxes

        sig { returns(T.nilable(FinchAPI::Models::Money)) }
        attr_reader :employer_taxes

        sig { params(employer_taxes: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Internal::Util::AnyHash))).void }
        attr_writer :employer_taxes

        sig { returns(T.nilable(FinchAPI::Models::Money)) }
        attr_reader :gross_pay

        sig { params(gross_pay: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Internal::Util::AnyHash))).void }
        attr_writer :gross_pay

        # Array of every individual on this payment.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :individual_ids

        sig { returns(T.nilable(FinchAPI::Models::Money)) }
        attr_reader :net_pay

        sig { params(net_pay: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Internal::Util::AnyHash))).void }
        attr_writer :net_pay

        sig { returns(T.nilable(String)) }
        attr_accessor :pay_date

        # List of pay frequencies associated with this payment.
        sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol])) }
        attr_accessor :pay_frequencies

        # Array of the Finch id (uuidv4) of every pay group associated with this payment.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :pay_group_ids

        # The pay period object.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::Payment::PayPeriod)) }
        attr_reader :pay_period

        sig do
          params(
            pay_period: T.nilable(T.any(FinchAPI::Models::HRIS::Payment::PayPeriod, FinchAPI::Internal::Util::AnyHash))
          )
            .void
        end
        attr_writer :pay_period

        sig do
          params(
            id: String,
            company_debit: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Internal::Util::AnyHash)),
            debit_date: T.nilable(String),
            employee_taxes: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Internal::Util::AnyHash)),
            employer_taxes: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Internal::Util::AnyHash)),
            gross_pay: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Internal::Util::AnyHash)),
            individual_ids: T.nilable(T::Array[String]),
            net_pay: T.nilable(T.any(FinchAPI::Models::Money, FinchAPI::Internal::Util::AnyHash)),
            pay_date: T.nilable(String),
            pay_frequencies: T.nilable(T::Array[FinchAPI::Models::HRIS::Payment::PayFrequency::OrSymbol]),
            pay_group_ids: T.nilable(T::Array[String]),
            pay_period: T.nilable(T.any(FinchAPI::Models::HRIS::Payment::PayPeriod, FinchAPI::Internal::Util::AnyHash))
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
          OrSymbol =
            T.type_alias { T.any(Symbol, String, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol) }

          ANNUALLY = T.let(:annually, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
          SEMI_ANNUALLY = T.let(:semi_annually, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
          MONTHLY = T.let(:monthly, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
          SEMI_MONTHLY = T.let(:semi_monthly, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
          BI_WEEKLY = T.let(:bi_weekly, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
          WEEKLY = T.let(:weekly, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
          DAILY = T.let(:daily, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)
          OTHER = T.let(:other, FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::HRIS::Payment::PayFrequency::TaggedSymbol]) }
          def self.values
          end
        end

        class PayPeriod < FinchAPI::BaseModel
          sig { returns(T.nilable(String)) }
          attr_accessor :end_date

          sig { returns(T.nilable(String)) }
          attr_accessor :start_date

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
