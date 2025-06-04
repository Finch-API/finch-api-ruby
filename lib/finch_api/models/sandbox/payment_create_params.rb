# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      # @see FinchAPI::Resources::Sandbox::Payment#create
      class PaymentCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute end_date
        #
        #   @return [String, nil]
        optional :end_date, String

        # @!attribute pay_statements
        #
        #   @return [Array<FinchAPI::Models::HRIS::PayStatement>, nil]
        optional :pay_statements, -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::PayStatement] }

        # @!attribute start_date
        #
        #   @return [String, nil]
        optional :start_date, String

        # @!method initialize(end_date: nil, pay_statements: nil, start_date: nil, request_options: {})
        #   @param end_date [String]
        #   @param pay_statements [Array<FinchAPI::Models::HRIS::PayStatement>]
        #   @param start_date [String]
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
