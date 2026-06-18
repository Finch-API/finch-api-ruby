# frozen_string_literal: true

module FinchAPI
  module Models
    # @see FinchAPI::Resources::Account#disconnect_entity
    class AccountDisconnectEntityParams < FinchAPI::Internal::Type::BaseModel
      extend FinchAPI::Internal::Type::RequestParameters::Converter
      include FinchAPI::Internal::Type::RequestParameters

      # @!attribute entity_ids
      #   Array of entity UUIDs to disconnect. At least one entity ID must be provided.
      #
      #   @return [Array<String>]
      required :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

      # @!method initialize(entity_ids:, request_options: {})
      #   @param entity_ids [Array<String>] Array of entity UUIDs to disconnect. At least one entity ID must be provided.
      #
      #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
