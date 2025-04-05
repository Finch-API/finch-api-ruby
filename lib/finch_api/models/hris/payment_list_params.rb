# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Payments#list
      class PaymentListParams < FinchAPI::Internal::Type::BaseModel
        # @!parse
        #   extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute end_date
        #   The end date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
        #   format.
        #
        #   @return [Date]
        required :end_date, Date

        # @!attribute start_date
        #   The start date to retrieve payments by a company (inclusive) in `YYYY-MM-DD`
        #   format.
        #
        #   @return [Date]
        required :start_date, Date

        # @!parse
        #   # @param end_date [Date]
        #   # @param start_date [Date]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(end_date:, start_date:, request_options: {}, **) = super

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
      end
    end
  end
end
