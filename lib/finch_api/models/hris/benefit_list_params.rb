# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Benefits#list
      class BenefitListParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute entity_ids
        #   The entity IDs to specify which entities' data to access.
        #
        #   @return [Array<String>, nil]
        optional :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

        # @!method initialize(entity_ids: nil, request_options: {})
        #   @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access.
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
