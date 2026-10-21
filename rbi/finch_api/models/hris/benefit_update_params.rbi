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

        sig { returns(String) }
        attr_accessor :benefit_id

        # The entity IDs to specify which entities' data to access. Provide exactly one
        # entity ID per request; a maximum of one is accepted. Required when the
        # connection has more than one entity — omitting it returns a `400`
        # `invalid_request_error`. Optional for single-entity connections.
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
            benefit_id: String,
            entity_ids: T::Array[String],
            description: String,
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          benefit_id:,
          # The entity IDs to specify which entities' data to access. Provide exactly one
          # entity ID per request; a maximum of one is accepted. Required when the
          # connection has more than one entity — omitting it returns a `400`
          # `invalid_request_error`. Optional for single-entity connections.
          entity_ids: nil,
          # Updated name or description.
          description: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              benefit_id: String,
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
