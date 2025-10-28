# typed: strong

module FinchAPI
  module Models
    module Payroll
      class PayGroupListParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Payroll::PayGroupListParams,
              FinchAPI::Internal::AnyHash
            )
          end

        # The entity IDs to specify which entities' data to access.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :entity_ids

        sig { params(entity_ids: T::Array[String]).void }
        attr_writer :entity_ids

        sig { returns(T.nilable(String)) }
        attr_reader :individual_id

        sig { params(individual_id: String).void }
        attr_writer :individual_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :pay_frequencies

        sig { params(pay_frequencies: T::Array[String]).void }
        attr_writer :pay_frequencies

        sig do
          params(
            entity_ids: T::Array[String],
            individual_id: String,
            pay_frequencies: T::Array[String],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The entity IDs to specify which entities' data to access.
          entity_ids: nil,
          individual_id: nil,
          pay_frequencies: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              entity_ids: T::Array[String],
              individual_id: String,
              pay_frequencies: T::Array[String],
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
