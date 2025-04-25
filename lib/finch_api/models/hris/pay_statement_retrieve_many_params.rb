# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::PayStatements#retrieve_many
      class PayStatementRetrieveManyParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute requests
        #   The array of batch requests.
        #
        #   @return [Array<FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request>]
        required :requests,
                 -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request] }

        # @!method initialize(requests:, request_options: {})
        #   @param requests [Array<FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request>] The array of batch requests.
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

        class Request < FinchAPI::Internal::Type::BaseModel
          # @!attribute payment_id
          #   A stable Finch `id` (UUID v4) for a payment.
          #
          #   @return [String]
          required :payment_id, String

          # @!attribute limit
          #   Number of pay statements to return (defaults to all).
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute offset
          #   Index to start from.
          #
          #   @return [Integer, nil]
          optional :offset, Integer

          # @!method initialize(payment_id:, limit: nil, offset: nil)
          #   @param payment_id [String] A stable Finch `id` (UUID v4) for a payment.
          #
          #   @param limit [Integer] Number of pay statements to return (defaults to all).
          #
          #   @param offset [Integer] Index to start from.
        end
      end
    end
  end
end
