# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::PayStatements#retrieve_many
      class PayStatementResponse < FinchAPI::BaseModel
        # @!attribute [r] body
        #
        #   @return [FinchAPI::Models::HRIS::PayStatementResponseBody, nil]
        optional :body, -> { FinchAPI::Models::HRIS::PayStatementResponseBody }

        # @!parse
        #   # @return [FinchAPI::Models::HRIS::PayStatementResponseBody]
        #   attr_writer :body

        # @!attribute [r] code
        #
        #   @return [Integer, nil]
        optional :code, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :code

        # @!attribute [r] payment_id
        #
        #   @return [String, nil]
        optional :payment_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :payment_id

        # @!parse
        #   # @param body [FinchAPI::Models::HRIS::PayStatementResponseBody]
        #   # @param code [Integer]
        #   # @param payment_id [String]
        #   #
        #   def initialize(body: nil, code: nil, payment_id: nil, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void
      end
    end
  end
end
