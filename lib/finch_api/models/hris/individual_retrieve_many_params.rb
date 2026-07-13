# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Individuals#retrieve_many
      class IndividualRetrieveManyParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute requests
        #   The array of batch requests. Maximum 10000 items per request.
        #
        #   @return [Array<FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request>]
        required :requests,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::IndividualRetrieveManyParams::Request] }

        # @!attribute entity_ids
        #   The entity IDs to specify which entities' data to access.
        #
        #   @return [Array<String>, nil]
        optional :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

        # @!attribute options
        #
        #   @return [FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options, nil]
        optional :options, -> { FinchAPI::HRIS::IndividualRetrieveManyParams::Options }, nil?: true

        # @!method initialize(requests:, entity_ids: nil, options: nil, request_options: {})
        #   @param requests [Array<FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request>] The array of batch requests. Maximum 10000 items per request.
        #
        #   @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access.
        #
        #   @param options [FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options, nil]
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

        class Request < FinchAPI::Internal::Type::BaseModel
          # @!attribute individual_id
          #
          #   @return [String]
          required :individual_id, String

          # @!method initialize(individual_id:)
          #   @param individual_id [String]
        end

        class Options < FinchAPI::Internal::Type::BaseModel
          # @!attribute include
          #
          #   @return [Array<String>, nil]
          optional :include, FinchAPI::Internal::Type::ArrayOf[String]

          # @!method initialize(include: nil)
          #   @param include [Array<String>]
        end
      end
    end
  end
end
