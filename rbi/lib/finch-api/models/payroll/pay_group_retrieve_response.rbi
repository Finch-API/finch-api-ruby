# typed: strong

module FinchAPI
  module Models
    module Payroll
      class PayGroupRetrieveResponse < FinchAPI::BaseModel
        # Finch id (uuidv4) for the pay group
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

        # Name of the pay group
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # List of pay frequencies associated with this pay group
        sig { returns(T::Array[FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol]) }
        def pay_frequencies
        end

        sig do
          params(_: T::Array[FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol])
            .returns(T::Array[FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol])
        end
        def pay_frequencies=(_)
        end

        sig do
          params(
            id: String,
            individual_ids: T::Array[String],
            name: String,
            pay_frequencies: T::Array[FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol]
          )
            .returns(T.attached_class)
        end
        def self.new(id:, individual_ids:, name:, pay_frequencies:)
        end

        sig do
          override
            .returns(
              {
                id: String,
                individual_ids: T::Array[String],
                name: String,
                pay_frequencies: T::Array[FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol]
              }
            )
        end
        def to_hash
        end

        module PayFrequency
          extend FinchAPI::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency) }
          OrSymbol =
            T.type_alias { T.any(Symbol, FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol) }

          ANNUALLY =
            T.let(:annually, FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol)
          SEMI_ANNUALLY =
            T.let(:semi_annually, FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol)
          QUARTERLY =
            T.let(:quarterly, FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol)
          MONTHLY =
            T.let(:monthly, FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol)
          SEMI_MONTHLY =
            T.let(:semi_monthly, FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol)
          BI_WEEKLY =
            T.let(:bi_weekly, FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol)
          WEEKLY = T.let(:weekly, FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol)
          DAILY = T.let(:daily, FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol)
          OTHER = T.let(:other, FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol)

          class << self
            sig do
              override.returns(T::Array[FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol])
            end
            def values
            end
          end
        end
      end
    end
  end
end
