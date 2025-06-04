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

        sig { returns(FinchAPI::HRIS::PayStatementResponse::Body::Variants) }
        attr_accessor :body

        sig { returns(Integer) }
        attr_accessor :code

        sig { returns(String) }
        attr_accessor :payment_id

        sig do
          params(
            body:
              T.any(
                FinchAPI::HRIS::PayStatementResponseBody::OrHash,
                FinchAPI::HRIS::PayStatementResponse::Body::BatchError::OrHash,
                FinchAPI::HRIS::PayStatementDataSyncInProgress::OrHash
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
              body: FinchAPI::HRIS::PayStatementResponse::Body::Variants,
              code: Integer,
              payment_id: String
            }
          )
        end
        def to_hash
        end

        module Body
          extend FinchAPI::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                FinchAPI::HRIS::PayStatementResponseBody,
                FinchAPI::HRIS::PayStatementResponse::Body::BatchError,
                FinchAPI::HRIS::PayStatementDataSyncInProgress
              )
            end

          class BatchError < FinchAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  FinchAPI::HRIS::PayStatementResponse::Body::BatchError,
                  FinchAPI::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :code

            sig { returns(String) }
            attr_accessor :message

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_reader :finch_code

            sig { params(finch_code: String).void }
            attr_writer :finch_code

            sig do
              params(
                code: Float,
                message: String,
                name: String,
                finch_code: String
              ).returns(T.attached_class)
            end
            def self.new(code:, message:, name:, finch_code: nil)
            end

            sig do
              override.returns(
                {
                  code: Float,
                  message: String,
                  name: String,
                  finch_code: String
                }
              )
            end
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[FinchAPI::HRIS::PayStatementResponse::Body::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
