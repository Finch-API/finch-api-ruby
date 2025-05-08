# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PayStatementRetrieveManyParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

        # The array of batch requests.
        sig do
          returns(
            T::Array[FinchAPI::HRIS::PayStatementRetrieveManyParams::Request]
          )
        end
        attr_accessor :requests

        sig do
          params(
            requests:
              T::Array[
                FinchAPI::HRIS::PayStatementRetrieveManyParams::Request::OrHash
              ],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The array of batch requests.
          requests:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              requests:
                T::Array[
                  FinchAPI::HRIS::PayStatementRetrieveManyParams::Request
                ],
              request_options: FinchAPI::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Request < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

          # A stable Finch `id` (UUID v4) for a payment.
          sig { returns(String) }
          attr_accessor :payment_id

          # Number of pay statements to return (defaults to all).
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Index to start from.
          sig { returns(T.nilable(Integer)) }
          attr_reader :offset

          sig { params(offset: Integer).void }
          attr_writer :offset

          sig do
            params(payment_id: String, limit: Integer, offset: Integer).returns(
              T.attached_class
            )
          end
          def self.new(
            # A stable Finch `id` (UUID v4) for a payment.
            payment_id:,
            # Number of pay statements to return (defaults to all).
            limit: nil,
            # Index to start from.
            offset: nil
          )
          end

          sig do
            override.returns(
              { payment_id: String, limit: Integer, offset: Integer }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
