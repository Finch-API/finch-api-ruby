# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PayStatementRetrieveManyParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # The array of batch requests.
        sig { returns(T::Array[FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request]) }
        attr_accessor :requests

        sig do
          params(
            requests: T::Array[T.any(FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request, FinchAPI::Internal::AnyHash)],
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The array of batch requests.
          requests:,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                requests: T::Array[FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request],
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash; end

        class Request < FinchAPI::Internal::Type::BaseModel
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
          def self.new(
            # A stable Finch `id` (UUID v4) for a payment.
            payment_id:,
            # Number of pay statements to return (defaults to all).
            limit: nil,
            # Index to start from.
            offset: nil
          ); end
          sig { override.returns({payment_id: String, limit: Integer, offset: Integer}) }
          def to_hash; end
        end
      end
    end
  end
end
