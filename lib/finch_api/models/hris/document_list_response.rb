# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Documents#list
      class DocumentListResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute documents
        #
        #   @return [Array<FinchAPI::Models::HRIS::DocumentResponse>]
        required :documents, -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::DocumentResponse] }

        # @!attribute paging
        #
        #   @return [FinchAPI::Models::Paging]
        required :paging, -> { FinchAPI::Paging }

        # @!method initialize(documents:, paging:)
        #   @param documents [Array<FinchAPI::Models::HRIS::DocumentResponse>]
        #   @param paging [FinchAPI::Models::Paging]
      end
    end
  end
end
