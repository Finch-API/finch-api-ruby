# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        ConfigurationRetrieveResponse =
          T.let(
            FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration],
            FinchAPI::Type::Converter
          )
      end
    end
  end
end
