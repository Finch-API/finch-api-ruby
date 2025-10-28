# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitUpdateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::BenefitUpdateParams,
              FinchAPI::Internal::AnyHash
            )
          end

        # The entity IDs to specify which entities' data to access.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :entity_ids

        sig { params(entity_ids: T::Array[String]).void }
        attr_writer :entity_ids

        # Updated name or description.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig do
          params(
            entity_ids: T::Array[String],
            description: String,
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The entity IDs to specify which entities' data to access.
          entity_ids: nil,
          # Updated name or description.
          description: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              entity_ids: T::Array[String],
              description: String,
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
