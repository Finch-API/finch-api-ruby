# typed: strong

module FinchAPI
  module Models
    class AccountDisconnectEntityParams < FinchAPI::Internal::Type::BaseModel
      extend FinchAPI::Internal::Type::RequestParameters::Converter
      include FinchAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            FinchAPI::AccountDisconnectEntityParams,
            FinchAPI::Internal::AnyHash
          )
        end

      # Array of entity UUIDs to disconnect. At least one entity ID must be provided.
      sig { returns(T::Array[String]) }
      attr_accessor :entity_ids

      sig do
        params(
          entity_ids: T::Array[String],
          request_options: FinchAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Array of entity UUIDs to disconnect. At least one entity ID must be provided.
        entity_ids:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            entity_ids: T::Array[String],
            request_options: FinchAPI::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
