# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PayStatementResponseBody < FinchAPI::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::Paging)) }
        def paging
        end

        sig do
          params(_: T.any(FinchAPI::Models::Paging, FinchAPI::Util::AnyHash))
            .returns(T.any(FinchAPI::Models::Paging, FinchAPI::Util::AnyHash))
        end
        def paging=(_)
        end

        # The array of pay statements for the current payment.
        sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::PayStatement])) }
        def pay_statements
        end

        sig do
          params(_: T::Array[FinchAPI::Models::HRIS::PayStatement])
            .returns(T::Array[FinchAPI::Models::HRIS::PayStatement])
        end
        def pay_statements=(_)
        end

        sig do
          params(paging: FinchAPI::Models::Paging, pay_statements: T::Array[FinchAPI::Models::HRIS::PayStatement])
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
