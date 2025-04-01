# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PayStatementRetrieveManyParams < FinchAPI::BaseModel
        extend FinchAPI::Type::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # The array of batch requests.
        sig { returns(T::Array[FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request]) }
        attr_accessor :requests

        sig do
          params(
            requests: T::Array[T.any(FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request, FinchAPI::Util::AnyHash)],
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(requests:, request_options: {})
        end

        sig do
          override
            .returns(
              {
                requests: T::Array[FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request],
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Request < FinchAPI::BaseModel
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

          sig { params(payment_id: String, limit: Integer, offset: Integer).returns(T.attached_class) }
          def self.new(payment_id:, limit: nil, offset: nil)
          end

          sig { override.returns({payment_id: String, limit: Integer, offset: Integer}) }
          def to_hash
          end
        end
      end
    end
  end
end
