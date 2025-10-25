# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Payments#list
      class PaymentListParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute end_date
        #   The end date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
        #   format.
        #
        #   @return [Date]
        required :end_date, Date

        # @!attribute entity_ids
        #   The entity IDs to specify which entities' data to access.
        #
        #   @return [Array<String>]
        required :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

        # @!attribute start_date
        #   The start date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
        #   format.
        #
        #   @return [Date]
        required :start_date, Date

        # @!method initialize(end_date:, entity_ids:, start_date:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::HRIS::PaymentListParams} for more details.
        #
        #   @param end_date [Date] The end date to retrieve payments by a company (inclusive) in `YYYY-MM-DD` forma
        #
        #   @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access.
        #
        #   @param start_date [Date] The start date to retrieve payments by a company (inclusive) in `YYYY-MM-DD` for
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
