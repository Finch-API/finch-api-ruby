# typed: strong

module FinchAPI
  module Models
    module HRIS
      class PaymentListParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::PaymentListParams,
              FinchAPI::Internal::AnyHash
            )
          end

        # The end date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
        # format.
        sig { returns(Date) }
        attr_accessor :end_date

        # The entity IDs to specify which entities' data to access.
        sig { returns(T::Array[String]) }
        attr_accessor :entity_ids

        # The start date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
        # format.
        sig { returns(Date) }
        attr_accessor :start_date

        sig do
          params(
            end_date: Date,
            entity_ids: T::Array[String],
            start_date: Date,
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The end date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
          # format.
          end_date:,
          # The entity IDs to specify which entities' data to access.
          entity_ids:,
          # The start date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
          # format.
          start_date:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              end_date: Date,
              entity_ids: T::Array[String],
              start_date: Date,
              request_options: FinchAPI::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
