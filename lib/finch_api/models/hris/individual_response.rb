# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Individuals#retrieve_many
      class IndividualResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute body
        #
        #   @return [FinchAPI::Models::HRIS::Individual, nil]
        optional :body, -> { FinchAPI::Models::HRIS::Individual }

        # @!attribute code
        #
        #   @return [Integer, nil]
        optional :code, Integer

        # @!attribute individual_id
        #
        #   @return [String, nil]
        optional :individual_id, String

        # @!method initialize(body: nil, code: nil, individual_id: nil)
        #   @param body [FinchAPI::Models::HRIS::Individual]
        #   @param code [Integer]
        #   @param individual_id [String]
      end
    end
  end
end
