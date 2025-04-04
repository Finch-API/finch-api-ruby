# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        ConfigurationRetrieveResponse =
          T.let(
            FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration],
            FinchAPI::Internal::Type::Converter
          )
      end
    end
  end
end
