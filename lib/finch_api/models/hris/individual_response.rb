# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Individuals#retrieve_many
      class IndividualResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute body
        #
        #   @return [FinchAPI::HRIS::Individual::UnionMember0, FinchAPI::HRIS::Individual::BatchError]
        required :body, union: -> { FinchAPI::HRIS::Individual }

        # @!attribute code
        #
        #   @return [Integer]
        required :code, Integer

        # @!attribute individual_id
        #
        #   @return [String]
        required :individual_id, String

        # @!method initialize(body:, code:, individual_id:)
        #   @param body [FinchAPI::HRIS::Individual::UnionMember0, FinchAPI::HRIS::Individual::BatchError]
        #   @param code [Integer]
        #   @param individual_id [String]
      end
    end
  end
end
