# frozen_string_literal: true

module FinchAPI
  module Models
    class AccountIntrospectParams < FinchAPI::BaseModel
      # @!parse
      #   extend FinchAPI::RequestParameters::Converter
      include FinchAPI::RequestParameters

      # @!parse
      #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | FinchAPI::BaseModel) -> void
    end
  end
end
