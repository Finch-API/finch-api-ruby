# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class DocumentListParams < FinchAPI::BaseModel
        # @!parse
        #   extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # @!attribute [r] individual_ids
        #   Comma-delimited list of stable Finch uuids for each individual. If empty,
        #     defaults to all individuals
        #
        #   @return [Array<String>, nil]
        optional :individual_ids, FinchAPI::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :individual_ids

        # @!attribute [r] limit
        #   Number of documents to return (defaults to all)
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :limit

        # @!attribute [r] offset
        #   Index to start from (defaults to 0)
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :offset

        # @!attribute [r] types
        #   Comma-delimited list of document types to filter on. If empty, defaults to all
        #     types
        #
        #   @return [Array<Symbol, FinchAPI::Models::HRIS::DocumentListParams::Type>, nil]
        optional :types, -> { FinchAPI::ArrayOf[enum: FinchAPI::Models::HRIS::DocumentListParams::Type] }

        # @!parse
        #   # @return [Array<Symbol, FinchAPI::Models::HRIS::DocumentListParams::Type>]
        #   attr_writer :types

        # @!parse
        #   # @param individual_ids [Array<String>]
        #   # @param limit [Integer]
        #   # @param offset [Integer]
        #   # @param types [Array<Symbol, FinchAPI::Models::HRIS::DocumentListParams::Type>]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(individual_ids: nil, limit: nil, offset: nil, types: nil, request_options: {}, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        # @abstract
        #
        class Type < FinchAPI::Enum
          W4_2020 = :w4_2020
          W4_2005 = :w4_2005

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
