# frozen_string_literal: true

module FinchAPI
  module Models
    module Payroll
      # @see FinchAPI::Resources::Payroll::PayGroups#list
      class PayGroupListParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute individual_id
        #
        #   @return [String, nil]
        optional :individual_id, String

        # @!attribute pay_frequencies
        #
        #   @return [Array<String>, nil]
        optional :pay_frequencies, FinchAPI::Internal::Type::ArrayOf[String]

        # @!method initialize(individual_id: nil, pay_frequencies: nil, request_options: {})
        #   @param individual_id [String]
        #   @param pay_frequencies [Array<String>]
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
