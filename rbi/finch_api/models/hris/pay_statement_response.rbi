# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PayStatementResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

        sig { returns(T.nilable(FinchAPI::HRIS::PayStatementResponseBody)) }
        attr_reader :body

        sig do
          params(body: FinchAPI::HRIS::PayStatementResponseBody::OrHash).void
        end
        attr_writer :body

        sig { returns(T.nilable(Integer)) }
        attr_reader :code

        sig { params(code: Integer).void }
        attr_writer :code

        sig { returns(T.nilable(String)) }
        attr_reader :payment_id

        sig { params(payment_id: String).void }
        attr_writer :payment_id

        sig do
          params(
            body: FinchAPI::HRIS::PayStatementResponseBody::OrHash,
            code: Integer,
            payment_id: String
          ).returns(T.attached_class)
        end
        def self.new(body: nil, code: nil, payment_id: nil)
        end

        sig do
          override.returns(
            {
              body: FinchAPI::HRIS::PayStatementResponseBody,
              code: Integer,
              payment_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
