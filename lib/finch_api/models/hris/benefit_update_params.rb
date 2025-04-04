# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Benefits#update
      class BenefitUpdateParams < FinchAPI::Internal::Type::BaseModel
        # @!parse
        #   extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

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

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
      end
    end
  end
end
