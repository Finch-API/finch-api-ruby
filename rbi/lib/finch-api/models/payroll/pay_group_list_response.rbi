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
        sig { returns(T.nilable(T::Array[FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol])) }
        def pay_frequencies
        end

        sig do
          params(_: T::Array[FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol])
            .returns(T::Array[FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol])
        end
        def pay_frequencies=(_)
        end

        sig do
          params(
            id: String,
            name: String,
            pay_frequencies: T::Array[FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol]
          )
            .returns(T.attached_class)
        end
        def self.new(id: nil, name: nil, pay_frequencies: nil)
        end

        sig do
          override
            .returns(
              {
                id: String,
                name: String,
                pay_frequencies: T::Array[FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol]
              }
            )
        end
        def to_hash
        end

        module PayFrequency
          extend FinchAPI::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency) }
          OrSymbol =
            T.type_alias { T.any(Symbol, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol) }

          ANNUALLY = T.let(:annually, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol)
          SEMI_ANNUALLY =
            T.let(:semi_annually, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol)
          QUARTERLY =
            T.let(:quarterly, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol)
          MONTHLY = T.let(:monthly, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol)
          SEMI_MONTHLY =
            T.let(:semi_monthly, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol)
          BI_WEEKLY =
            T.let(:bi_weekly, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol)
          WEEKLY = T.let(:weekly, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol)
          DAILY = T.let(:daily, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol)
          OTHER = T.let(:other, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol)
        end
      end
    end
  end
end
