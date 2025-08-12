# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedListParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Jobs::AutomatedListParams,
              FinchAPI::Internal::AnyHash
            )
          end

        # The entity ID to use when authenticating with a multi-account token. Required
        # when using a multi-account token to specify which entity's data to access.
        # Example: `123e4567-e89b-12d3-a456-426614174000`
        sig { returns(T.nilable(String)) }
        attr_reader :entity_id

        sig { params(entity_id: String).void }
        attr_writer :entity_id

        # Number of items to return
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Index to start from (defaults to 0)
        sig { returns(T.nilable(Integer)) }
        attr_reader :offset

        sig { params(offset: Integer).void }
        attr_writer :offset

        sig do
          params(
            entity_id: String,
            limit: Integer,
            offset: Integer,
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The entity ID to use when authenticating with a multi-account token. Required
          # when using a multi-account token to specify which entity's data to access.
          # Example: `123e4567-e89b-12d3-a456-426614174000`
          entity_id: nil,
          # Number of items to return
          limit: nil,
          # Index to start from (defaults to 0)
          offset: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              entity_id: String,
              limit: Integer,
              offset: Integer,
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
