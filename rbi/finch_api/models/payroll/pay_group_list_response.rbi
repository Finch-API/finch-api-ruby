# typed: strong

module FinchAPI
  module Models
    module Payroll
      class PayGroupListResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Models::Payroll::PayGroupListResponse,
              FinchAPI::Internal::AnyHash
            )
          end

        # Finch id (uuidv4) for the pay group
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Name of the pay group
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # List of pay frequencies associated with this pay group
        sig do
          returns(
            T.nilable(
              T::Array[
                FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
              ]
            )
          )
        end
        attr_reader :pay_frequencies

        sig do
          params(
            pay_frequencies:
              T::Array[
                FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::OrSymbol
              ]
          ).void
        end
        attr_writer :pay_frequencies

        sig do
          params(
            id: String,
            name: String,
            pay_frequencies:
              T::Array[
                FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::OrSymbol
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Finch id (uuidv4) for the pay group
          id: nil,
          # Name of the pay group
          name: nil,
          # List of pay frequencies associated with this pay group
          pay_frequencies: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              name: String,
              pay_frequencies:
                T::Array[
                  FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
                ]
            }
          )
        end
        def to_hash
        end

        module PayFrequency
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ANNUALLY =
            T.let(
              :annually,
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            )
          SEMI_ANNUALLY =
            T.let(
              :semi_annually,
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            )
          SEMI_MONTHLY =
            T.let(
              :semi_monthly,
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            )
          BI_WEEKLY =
            T.let(
              :bi_weekly,
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :weekly,
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            )
          DAILY =
            T.let(
              :daily,
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
