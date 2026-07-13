# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Employments#retrieve_many
      class EmploymentRetrieveManyParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute requests
        #   The array of batch requests. Maximum 10000 items per request.
        #
        #   @return [Array<FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request>]
        required :requests,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::EmploymentRetrieveManyParams::Request] }

        # @!attribute entity_ids
        #   The entity IDs to specify which entities' data to access.
        #
        #   @return [Array<String>, nil]
        optional :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

        # @!method initialize(requests:, entity_ids: nil, request_options: {})
        #   @param requests [Array<FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request>] The array of batch requests. Maximum 10000 items per request.
        #
        #   @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access.
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

        class Request < FinchAPI::Internal::Type::BaseModel
          # @!attribute individual_id
          #   A stable Finch `id` (UUID v4) for an individual in the company.
          #
          #   @return [String]
          required :individual_id, String

          # @!method initialize(individual_id:)
          #   @param individual_id [String] A stable Finch `id` (UUID v4) for an individual in the company.
        end
      end
    end
  end
end
