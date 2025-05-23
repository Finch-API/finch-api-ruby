# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PayStatementResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::PayStatementResponse,
              FinchAPI::Internal::AnyHash
            )
          end

        sig { returns(FinchAPI::HRIS::PayStatementResponseBody::Variants) }
        attr_accessor :body

        sig { returns(Integer) }
        attr_accessor :code

        sig { returns(String) }
        attr_accessor :payment_id

        sig do
          params(
            body:
              T.any(
                FinchAPI::HRIS::PayStatementResponseBody::UnionMember0::OrHash,
                FinchAPI::HRIS::PayStatementResponseBody::BatchError::OrHash,
                FinchAPI::HRIS::PayStatementResponseBody::UnionMember2::OrHash
              ),
            code: Integer,
            payment_id: String
          ).returns(T.attached_class)
        end
        def self.new(body:, code:, payment_id:)
        end

        sig do
          override.returns(
            {
              body: FinchAPI::HRIS::PayStatementResponseBody::Variants,
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
