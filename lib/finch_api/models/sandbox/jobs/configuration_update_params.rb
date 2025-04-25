# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        # @see FinchAPI::Resources::Sandbox::Jobs::Configuration#update
        class ConfigurationUpdateParams < FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
