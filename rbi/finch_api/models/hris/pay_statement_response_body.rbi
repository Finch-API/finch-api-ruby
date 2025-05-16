# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PayStatementResponseBody < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::PayStatementResponseBody,
              FinchAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(FinchAPI::Paging)) }
        attr_reader :paging

        sig { params(paging: FinchAPI::Paging::OrHash).void }
        attr_writer :paging

        # The array of pay statements for the current payment.
        sig { returns(T.nilable(T::Array[FinchAPI::HRIS::PayStatement])) }
        attr_reader :pay_statements

        sig do
          params(
            pay_statements: T::Array[FinchAPI::HRIS::PayStatement::OrHash]
          ).void
        end
        attr_writer :pay_statements

        sig do
          params(
            paging: FinchAPI::Paging::OrHash,
            pay_statements: T::Array[FinchAPI::HRIS::PayStatement::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          paging: nil,
          # The array of pay statements for the current payment.
          pay_statements: nil
        )
        end

        sig do
          override.returns(
            {
              paging: FinchAPI::Paging,
              pay_statements: T::Array[FinchAPI::HRIS::PayStatement]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
