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
        sig { returns(String) }
        attr_accessor :id

        # Name of the pay group
        sig { returns(String) }
        attr_accessor :name

        # List of pay frequencies associated with this pay group
        sig do
          returns(
            T::Array[
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            ]
          )
        end
        attr_accessor :pay_frequencies

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
          id:,
          # Name of the pay group
          name:,
          # List of pay frequencies associated with this pay group
          pay_frequencies:
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
          BI_WEEKLY =
            T.let(
              :bi_weekly,
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            )
          DAILY =
            T.let(
              :daily,
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            )
          SEMI_ANNUALLY =
            T.let(
              :semi_annually,
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            )
          SEMI_MONTHLY =
            T.let(
              :semi_monthly,
              FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :weekly,
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
