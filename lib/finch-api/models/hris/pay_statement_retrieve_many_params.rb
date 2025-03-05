# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class PayStatementRetrieveManyParams < FinchAPI::BaseModel
        # @!parse
        #   extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # @!attribute requests
        #   The array of batch requests.
        #
        #   @return [Array<FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request>]
        required :requests,
                 -> { FinchAPI::ArrayOf[FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request] }

        # @!parse
        #   # @param requests [Array<FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request>]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(requests:, request_options: {}, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        class Request < FinchAPI::BaseModel
          # @!attribute payment_id
          #   A stable Finch `id` (UUID v4) for a payment.
          #
          #   @return [String]
          required :payment_id, String

          # @!attribute [r] limit
          #   Number of pay statements to return (defaults to all).
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :limit

          # @!attribute [r] offset
          #   Index to start from.
          #
          #   @return [Integer, nil]
          optional :offset, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :offset

          # @!parse
          #   # @param payment_id [String]
          #   # @param limit [Integer]
          #   # @param offset [Integer]
          #   #
          #   def initialize(payment_id:, limit: nil, offset: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void
        end
      end
    end
  end
end
