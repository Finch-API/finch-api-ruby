# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Directory#list_individuals
      class DirectoryListIndividualsParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute entity_ids
        #   The entity IDs to specify which entities' data to access.
        #
        #   @return [Array<String>]
        required :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

        # @!attribute limit
        #   Number of employees to return (defaults to all)
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute offset
        #   Index to start from (defaults to 0)
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!method initialize(entity_ids:, limit: nil, offset: nil, request_options: {})
        #   @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access.
        #
        #   @param limit [Integer] Number of employees to return (defaults to all)
        #
        #   @param offset [Integer] Index to start from (defaults to 0)
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
