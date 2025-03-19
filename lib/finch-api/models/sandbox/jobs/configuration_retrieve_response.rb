# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        ConfigurationRetrieveResponse =
          FinchAPI::ArrayOf[-> { FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration }]
      end
    end
  end
end
