# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::PayStatements#retrieve_many
      class PayStatementResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute body
        #
        #   @return [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0, FinchAPI::Models::HRIS::PayStatementResponseBody::BatchError, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember2]
        required :body, union: -> { FinchAPI::HRIS::PayStatementResponseBody }

        # @!attribute code
        #
        #   @return [Integer]
        required :code, Integer

        # @!attribute payment_id
        #
        #   @return [String]
        required :payment_id, String

        # @!method initialize(body:, code:, payment_id:)
        #   @param body [FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember0, FinchAPI::Models::HRIS::PayStatementResponseBody::BatchError, FinchAPI::Models::HRIS::PayStatementResponseBody::UnionMember2]
        #   @param code [Integer]
        #   @param payment_id [String]
      end
    end
  end
end
