# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PayStatementResponseBody < FinchAPI::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::Paging)) }
        attr_reader :paging

        sig { params(paging: T.any(FinchAPI::Models::Paging, FinchAPI::Util::AnyHash)).void }
        attr_writer :paging

        # The array of pay statements for the current payment.
        sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::PayStatement])) }
        attr_reader :pay_statements

        sig { params(pay_statements: T::Array[T.any(FinchAPI::Models::HRIS::PayStatement, FinchAPI::Util::AnyHash)]).void }
        attr_writer :pay_statements

        sig do
          params(
            paging: T.any(FinchAPI::Models::Paging, FinchAPI::Util::AnyHash),
            pay_statements: T::Array[T.any(FinchAPI::Models::HRIS::PayStatement, FinchAPI::Util::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(paging: nil, pay_statements: nil)
        end

        sig do
          override
            .returns(
              {paging: FinchAPI::Models::Paging, pay_statements: T::Array[FinchAPI::Models::HRIS::PayStatement]}
            )
        end
        def to_hash
        end
      end
    end
  end
end
