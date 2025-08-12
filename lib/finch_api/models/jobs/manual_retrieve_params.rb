# frozen_string_literal: true

module FinchAPI
  module Models
    module Jobs
      # @see FinchAPI::Resources::Jobs::Manual#retrieve
      class ManualRetrieveParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute entity_id
        #   The entity ID to use when authenticating with a multi-account token. Required
        #   when using a multi-account token to specify which entity's data to access.
        #   Example: `123e4567-e89b-12d3-a456-426614174000`
        #
        #   @return [String, nil]
        optional :entity_id, String

        # @!method initialize(entity_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::Jobs::ManualRetrieveParams} for more details.
        #
        #   @param entity_id [String] The entity ID to use when authenticating with a multi-account token. Required wh
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
