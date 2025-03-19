# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        ConfigurationRetrieveResponse =
          T.type_alias { T::Array[FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration] }
      end
    end
  end
end
