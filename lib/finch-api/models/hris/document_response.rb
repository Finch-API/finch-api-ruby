# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class DocumentResponse < FinchAPI::BaseModel
        # @!attribute [r] id
        #   A stable Finch id for the document.
        #
        #   @return [String, nil]
        optional :id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :id

        # @!attribute individual_id
        #   The ID of the individual associated with the document. This will be null for
        #     employer-level documents.
        #
        #   @return [String, nil]
        optional :individual_id, String, nil?: true

        # @!attribute [r] type
        #   The type of document.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::DocumentResponse::Type, nil]
        optional :type, enum: -> { FinchAPI::Models::HRIS::DocumentResponse::Type }

        # @!parse
        #   # @return [Symbol, FinchAPI::Models::HRIS::DocumentResponse::Type]
        #   attr_writer :type

        # @!attribute [r] url
        #   A URL to access the document. Format:
        #     `https://api.tryfinch.com/employer/documents/:document_id`.
        #
        #   @return [String, nil]
        optional :url, String

        # @!parse
        #   # @return [String]
        #   attr_writer :url

        # @!attribute year
        #   The year the document applies to, if available.
        #
        #   @return [Float, nil]
        optional :year, Float, nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param individual_id [String, nil]
        #   # @param type [Symbol, FinchAPI::Models::HRIS::DocumentResponse::Type]
        #   # @param url [String]
        #   # @param year [Float, nil]
        #   #
        #   def initialize(id: nil, individual_id: nil, type: nil, url: nil, year: nil, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        # The type of document.
        module Type
          extend FinchAPI::Enum

          W4_2020 = :w4_2020
          W4_2005 = :w4_2005

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
