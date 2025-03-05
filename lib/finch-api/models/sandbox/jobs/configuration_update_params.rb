# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        class ConfigurationUpdateParams < FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration
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
  end
end
