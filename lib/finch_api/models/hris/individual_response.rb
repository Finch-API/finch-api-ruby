# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Individuals#retrieve_many
      class IndividualResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute [r] body
        #
        #   @return [FinchAPI::Models::HRIS::Individual, nil]
        optional :body, -> { FinchAPI::Models::HRIS::Individual }

        # @!parse
        #   # @return [FinchAPI::Models::HRIS::Individual]
        #   attr_writer :body

        # @!attribute [r] code
        #
        #   @return [Integer, nil]
        optional :code, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :code

        # @!attribute [r] individual_id
        #
        #   @return [String, nil]
        optional :individual_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :individual_id

        # @!parse
        #   # @param body [FinchAPI::Models::HRIS::Individual]
        #   # @param code [Integer]
        #   # @param individual_id [String]
        #   #
        #   def initialize(body: nil, code: nil, individual_id: nil, **) = super

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
      end
    end
  end
end
