# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Directory#list_individuals
      class DirectoryListIndividualsParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute entity_ids
        #   The entity IDs to specify which entities' data to access. Provide exactly one
        #   entity ID per request; a maximum of one is accepted.
        #
        #   @return [Array<String>, nil]
        optional :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

        # @!attribute limit
        #   Number of employees to return (defaults to 100, maximum 10000)
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute offset
        #   Index to start from (defaults to 0)
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!method initialize(entity_ids: nil, limit: nil, offset: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::HRIS::DirectoryListIndividualsParams} for more details.
        #
        #   @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access. Provide exactly one en
        #
        #   @param limit [Integer] Number of employees to return (defaults to 100, maximum 10000)
        #
        #   @param offset [Integer] Index to start from (defaults to 0)
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
