# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::PayStatements#retrieve_many
      class PayStatementResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute body
        #
        #   @return [FinchAPI::Models::HRIS::PayStatementResponseBody, FinchAPI::Models::HRIS::PayStatementResponse::Body::BatchError, FinchAPI::Models::HRIS::PayStatementDataSyncInProgress]
        required :body, union: -> { FinchAPI::HRIS::PayStatementResponse::Body }

        # @!attribute code
        #
        #   @return [Integer]
        required :code, Integer

        # @!attribute payment_id
        #
        #   @return [String]
        required :payment_id, String

        # @!method initialize(body:, code:, payment_id:)
        #   @param body [FinchAPI::Models::HRIS::PayStatementResponseBody, FinchAPI::Models::HRIS::PayStatementResponse::Body::BatchError, FinchAPI::Models::HRIS::PayStatementDataSyncInProgress]
        #   @param code [Integer]
        #   @param payment_id [String]

        # @see FinchAPI::Models::HRIS::PayStatementResponse#body
        module Body
          extend FinchAPI::Internal::Type::Union

          variant -> { FinchAPI::HRIS::PayStatementResponseBody }

          variant -> { FinchAPI::HRIS::PayStatementResponse::Body::BatchError }

          variant -> { FinchAPI::HRIS::PayStatementDataSyncInProgress }

          class BatchError < FinchAPI::Internal::Type::BaseModel
            # @!attribute code
            #
            #   @return [Float]
            required :code, Float

            # @!attribute message
            #
            #   @return [String]
            required :message, String

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute finch_code
            #
            #   @return [String, nil]
            optional :finch_code, String

            # @!method initialize(code:, message:, name:, finch_code: nil)
            #   @param code [Float]
            #   @param message [String]
            #   @param name [String]
            #   @param finch_code [String]
          end

          # @!method self.variants
          #   @return [Array(FinchAPI::Models::HRIS::PayStatementResponseBody, FinchAPI::Models::HRIS::PayStatementResponse::Body::BatchError, FinchAPI::Models::HRIS::PayStatementDataSyncInProgress)]
        end
      end
    end
  end
end
