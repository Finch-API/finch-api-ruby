# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        # @see FinchAPI::Resources::HRIS::Benefits::Individuals#unenroll_many
        class IndividualUnenrollManyParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # @!attribute individual_ids
          #   Array of individual_ids to unenroll.
          #
          #   @return [Array<String>, nil]
          optional :individual_ids, FinchAPI::Internal::Type::ArrayOf[String]

          # @!method initialize(individual_ids: nil, request_options: {})
          #   @param individual_ids [Array<String>] Array of individual_ids to unenroll.
          #
          #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
