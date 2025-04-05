# typed: strong

module FinchAPI
  module Models
    module Payroll
      class PayGroupRetrieveResponse < FinchAPI::Internal::Type::BaseModel
        # Finch id (uuidv4) for the pay group
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Array[String]) }
        attr_accessor :individual_ids

        # Name of the pay group
        sig { returns(String) }
        attr_accessor :name

        # List of pay frequencies associated with this pay group
        sig { returns(T::Array[FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol]) }
        attr_accessor :pay_frequencies

        sig do
          params(
            id: String,
            individual_ids: T::Array[String],
            name: String,
            pay_frequencies: T::Array[FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::OrSymbol]
          )
            .returns(T.attached_class)
        end
        def self.new(id:, individual_ids:, name:, pay_frequencies:); end

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
        def to_hash; end

        module PayFrequency
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol) }

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

          sig do
            override.returns(T::Array[FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency::TaggedSymbol])
          end
          def self.values; end
        end
      end
    end
  end
end
