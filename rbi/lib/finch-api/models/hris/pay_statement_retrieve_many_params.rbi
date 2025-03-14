# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PayStatementRetrieveManyParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # The array of batch requests.
        sig { returns(T::Array[FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request]) }
        def requests
        end

        sig do
          params(_: T::Array[FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request])
            .returns(T::Array[FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request])
        end
        def requests=(_)
        end

        sig do
          params(
            requests: T::Array[FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request],
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
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
          def payment_id
          end

          sig { params(_: String).returns(String) }
          def payment_id=(_)
          end

          # Number of pay statements to return (defaults to all).
          sig { returns(T.nilable(Integer)) }
          def limit
          end

          sig { params(_: Integer).returns(Integer) }
          def limit=(_)
          end

          # Index to start from.
          sig { returns(T.nilable(Integer)) }
          def offset
          end

          sig { params(_: Integer).returns(Integer) }
          def offset=(_)
          end

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
