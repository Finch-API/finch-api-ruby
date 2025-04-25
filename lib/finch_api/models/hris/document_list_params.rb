# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Documents#list
      class DocumentListParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute individual_ids
        #   Comma-delimited list of stable Finch uuids for each individual. If empty,
        #   defaults to all individuals
        #
        #   @return [Array<String>, nil]
        optional :individual_ids, FinchAPI::Internal::Type::ArrayOf[String]

        # @!attribute limit
        #   Number of documents to return (defaults to all)
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute offset
        #   Index to start from (defaults to 0)
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!attribute types
        #   Comma-delimited list of document types to filter on. If empty, defaults to all
        #   types
        #
        #   @return [Array<Symbol, FinchAPI::Models::HRIS::DocumentListParams::Type>, nil]
        optional :types,
                 -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Models::HRIS::DocumentListParams::Type] }

        # @!method initialize(individual_ids: nil, limit: nil, offset: nil, types: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::HRIS::DocumentListParams} for more details.
        #
        #   @param individual_ids [Array<String>] Comma-delimited list of stable Finch uuids for each individual. If empty, defaul
        #   ...
        #
        #   @param limit [Integer] Number of documents to return (defaults to all)
        #
        #   @param offset [Integer] Index to start from (defaults to 0)
        #
        #   @param types [Array<Symbol, FinchAPI::Models::HRIS::DocumentListParams::Type>] Comma-delimited list of document types to filter on. If empty, defaults to all t
        #   ...
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

        module Type
          extend FinchAPI::Internal::Type::Enum

          W4_2020 = :w4_2020
          W4_2005 = :w4_2005

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
