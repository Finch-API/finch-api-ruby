# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        # @see FinchAPI::Resources::Sandbox::Jobs::Configuration#update
        class ConfigurationUpdateParams < FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration
          # @!parse
          #   extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # @!parse
          #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(request_options: {}, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void
        end
      end
    end
  end
end
