# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        # @see FinchAPI::Resources::HRIS::Benefits::Individuals#enrolled_ids
        class IndividualEnrolledIDsParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # @!attribute entity_ids
          #   The entity IDs to specify which entities' data to access.
          #
          #   @return [Array<String>]
          required :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

          # @!method initialize(entity_ids:, request_options: {})
          #   @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access.
          #
          #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
