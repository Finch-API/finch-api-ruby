# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        class ConfigurationUpdateParams < FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration
          extend FinchAPI::RequestParameters::Converter
          include FinchAPI::RequestParameters

          sig do
            params(request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
              .returns(T.attached_class)
          end
          def self.new(request_options: {})
          end

          sig { override.returns({request_options: FinchAPI::RequestOptions}) }
          def to_hash
          end
        end
      end
    end
  end
end
