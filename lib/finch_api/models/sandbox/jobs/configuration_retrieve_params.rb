# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        # @see FinchAPI::Resources::Sandbox::Jobs::Configuration#retrieve
        class ConfigurationRetrieveParams < FinchAPI::Internal::Type::BaseModel
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
  end
end
