# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        # @see FinchAPI::Resources::HRIS::Benefits::Individuals#retrieve_many_benefits
        class IndividualRetrieveManyBenefitsParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # @!attribute entity_ids
          #   The entity IDs to specify which entities' data to access.
          #
          #   @return [Array<String>]
          required :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

          # @!attribute individual_ids
          #   comma-delimited list of stable Finch uuids for each individual. If empty,
          #   defaults to all individuals
          #
          #   @return [String, nil]
          optional :individual_ids, String

          # @!method initialize(entity_ids:, individual_ids: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {FinchAPI::Models::HRIS::Benefits::IndividualRetrieveManyBenefitsParams} for
          #   more details.
          #
          #   @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access.
          #
          #   @param individual_ids [String] comma-delimited list of stable Finch uuids for each individual. If empty, defaul
          #
          #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
