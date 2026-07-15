# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        # @see FinchAPI::Resources::HRIS::Benefits::Individuals#unenroll_many
        class IndividualUnenrollManyParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # @!attribute benefit_id
          #
          #   @return [String]
          required :benefit_id, String

          # @!attribute entity_ids
          #   The entity IDs to specify which entities' data to access. Provide exactly one
          #   entity ID per request; a maximum of one is accepted.
          #
          #   @return [Array<String>, nil]
          optional :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

          # @!attribute individual_ids
          #   Array of individual_ids to unenroll.
          #
          #   @return [Array<String>, nil]
          optional :individual_ids, FinchAPI::Internal::Type::ArrayOf[String]

          # @!method initialize(benefit_id:, entity_ids: nil, individual_ids: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {FinchAPI::Models::HRIS::Benefits::IndividualUnenrollManyParams} for more
          #   details.
          #
          #   @param benefit_id [String]
          #
          #   @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access. Provide exactly one en
          #
          #   @param individual_ids [Array<String>] Array of individual_ids to unenroll.
          #
          #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
