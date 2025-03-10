# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class BenefitUpdateParams < FinchAPI::BaseModel
        # @!parse
        #   extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # @!attribute [r] description
        #   Updated name or description.
        #
        #   @return [String, nil]
        optional :description, String

        # @!parse
        #   # @return [String]
        #   attr_writer :description

        # @!parse
        #   # @param description [String]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(description: nil, request_options: {}, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void
      end
    end
  end
end
