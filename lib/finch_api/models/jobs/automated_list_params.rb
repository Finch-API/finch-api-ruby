# frozen_string_literal: true

module FinchAPI
  module Models
    module Jobs
      # @see FinchAPI::Resources::Jobs::Automated#list
      class AutomatedListParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute entity_id
        #   The entity ID to use when authenticating with a multi-account token. Required
        #   when using a multi-account token to specify which entity's data to access.
        #   Example: `123e4567-e89b-12d3-a456-426614174000`
        #
        #   @return [String, nil]
        optional :entity_id, String

        # @!attribute limit
        #   Number of items to return
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute offset
        #   Index to start from (defaults to 0)
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!method initialize(entity_id: nil, limit: nil, offset: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::Jobs::AutomatedListParams} for more details.
        #
        #   @param entity_id [String] The entity ID to use when authenticating with a multi-account token. Required wh
        #
        #   @param limit [Integer] Number of items to return
        #
        #   @param offset [Integer] Index to start from (defaults to 0)
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
