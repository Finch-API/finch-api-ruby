# frozen_string_literal: true

module FinchAPI
  module Models
    module Payroll
      # @see FinchAPI::Resources::Payroll::PayGroups#list
      class PayGroupListParams < FinchAPI::Internal::Type::BaseModel
        # @!parse
        #   extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute [r] individual_id
        #
        #   @return [String, nil]
        optional :individual_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :individual_id

        # @!attribute [r] pay_frequencies
        #
        #   @return [Array<String>, nil]
        optional :pay_frequencies, FinchAPI::Internal::Type::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :pay_frequencies

        # @!parse
        #   # @param individual_id [String]
        #   # @param pay_frequencies [Array<String>]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(individual_id: nil, pay_frequencies: nil, request_options: {}, **) = super

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
      end
    end
  end
end
