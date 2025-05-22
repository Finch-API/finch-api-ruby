# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::PayStatements#retrieve_many
      class PayStatementResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute body
        #
        #   @return [FinchAPI::Models::HRIS::PayStatementResponseBody, nil]
        optional :body, -> { FinchAPI::HRIS::PayStatementResponseBody }

        # @!attribute code
        #
        #   @return [Integer, nil]
        optional :code, Integer

        # @!attribute payment_id
        #
        #   @return [String, nil]
        optional :payment_id, String

        # @!method initialize(body: nil, code: nil, payment_id: nil)
        #   @param body [FinchAPI::Models::HRIS::PayStatementResponseBody]
        #   @param code [Integer]
        #   @param payment_id [String]
      end
    end
  end
end
