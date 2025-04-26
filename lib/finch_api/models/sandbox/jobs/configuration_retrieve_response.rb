# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        # @type [FinchAPI::Internal::Type::Converter]
        ConfigurationRetrieveResponse =
          FinchAPI::Internal::Type::ArrayOf[-> { FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration }]
      end
    end
  end
end
