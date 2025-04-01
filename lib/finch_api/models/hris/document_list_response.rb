# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Documents#list
      class DocumentListResponse < FinchAPI::BaseModel
        # @!attribute documents
        #
        #   @return [Array<FinchAPI::Models::HRIS::DocumentResponse>]
        required :documents, -> { FinchAPI::ArrayOf[FinchAPI::Models::HRIS::DocumentResponse] }

        # @!attribute paging
        #
        #   @return [FinchAPI::Models::Paging]
        required :paging, -> { FinchAPI::Models::Paging }

        # @!parse
        #   # @param documents [Array<FinchAPI::Models::HRIS::DocumentResponse>]
        #   # @param paging [FinchAPI::Models::Paging]
        #   #
        #   def initialize(documents:, paging:, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void
      end
    end
  end
end
