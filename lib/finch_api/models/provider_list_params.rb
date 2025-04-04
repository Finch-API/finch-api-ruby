# frozen_string_literal: true

module FinchAPI
  module Models
    # @see FinchAPI::Resources::Providers#list
    class ProviderListParams < FinchAPI::Internal::Type::BaseModel
      # @!parse
      #   extend FinchAPI::Internal::Type::RequestParameters::Converter
      include FinchAPI::Internal::Type::RequestParameters

      # @!parse
      #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
    end
  end
end
