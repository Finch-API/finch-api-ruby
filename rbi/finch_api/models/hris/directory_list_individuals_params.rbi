# typed: strong

module FinchAPI
  module Models
    module HRIS
      class DirectoryListIndividualsParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::DirectoryListIndividualsParams,
              FinchAPI::Internal::AnyHash
            )
          end

        # The entity IDs to specify which entities' data to access.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :entity_ids

        sig { params(entity_ids: T::Array[String]).void }
        attr_writer :entity_ids

        # Number of employees to return (defaults to all)
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
            entity_ids: T::Array[String],
            limit: Integer,
            offset: Integer,
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The entity IDs to specify which entities' data to access.
          entity_ids: nil,
          # Number of employees to return (defaults to all)
          limit: nil,
          # Index to start from (defaults to 0)
          offset: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              entity_ids: T::Array[String],
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
