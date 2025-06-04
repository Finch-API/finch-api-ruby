# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class PaymentCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Sandbox::PaymentCreateParams,
              FinchAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :end_date

        sig { params(end_date: String).void }
        attr_writer :end_date

        sig { returns(T.nilable(T::Array[FinchAPI::HRIS::PayStatement])) }
        attr_reader :pay_statements

        sig do
          params(
            pay_statements: T::Array[FinchAPI::HRIS::PayStatement::OrHash]
          ).void
        end
        attr_writer :pay_statements

        sig { returns(T.nilable(String)) }
        attr_reader :start_date

        sig { params(start_date: String).void }
        attr_writer :start_date

        sig do
          params(
            end_date: String,
            pay_statements: T::Array[FinchAPI::HRIS::PayStatement::OrHash],
            start_date: String,
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          end_date: nil,
          pay_statements: nil,
          start_date: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              end_date: String,
              pay_statements: T::Array[FinchAPI::HRIS::PayStatement],
              start_date: String,
              request_options: FinchAPI::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
