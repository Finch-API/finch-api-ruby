# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class DocumentResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute id
        #   A stable Finch id for the document.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute individual_id
        #   The ID of the individual associated with the document. This will be null for
        #   employer-level documents.
        #
        #   @return [String, nil]
        optional :individual_id, String, nil?: true

        # @!attribute type
        #   The type of document.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::DocumentResponse::Type, nil]
        optional :type, enum: -> { FinchAPI::HRIS::DocumentResponse::Type }

        # @!attribute url
        #   A URL to access the document. Format:
        #   `https://api.tryfinch.com/employer/documents/:document_id`.
        #
        #   @return [String, nil]
        optional :url, String

        # @!attribute year
        #   The year the document applies to, if available.
        #
        #   @return [Float, nil]
        optional :year, Float, nil?: true

        # @!method initialize(id: nil, individual_id: nil, type: nil, url: nil, year: nil)
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::HRIS::DocumentResponse} for more details.
        #
        #   @param id [String] A stable Finch id for the document.
        #
        #   @param individual_id [String, nil] The ID of the individual associated with the document. This will be null for emp
        #
        #   @param type [Symbol, FinchAPI::Models::HRIS::DocumentResponse::Type] The type of document.
        #
        #   @param url [String] A URL to access the document. Format: `https://api.tryfinch.com/employer/documen
        #
        #   @param year [Float, nil] The year the document applies to, if available.

        # The type of document.
        #
        # @see FinchAPI::Models::HRIS::DocumentResponse#type
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
