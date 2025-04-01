# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Benefits#retrieve
      class BenefitRetrieveParams < FinchAPI::BaseModel
        # @!parse
        #   extend FinchAPI::Type::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # @!parse
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(request_options: {}, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void
      end
    end
  end
end
