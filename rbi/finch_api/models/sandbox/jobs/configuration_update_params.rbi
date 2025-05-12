# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        class ConfigurationUpdateParams < FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::Sandbox::Jobs::ConfigurationUpdateParams,
                FinchAPI::Internal::AnyHash
              )
            end

          sig do
            params(request_options: FinchAPI::RequestOptions::OrHash).returns(
              T.attached_class
            )
          end
          def self.new(request_options: {})
          end

          sig do
            override.returns({ request_options: FinchAPI::RequestOptions })
          end
          def to_hash
          end
        end
      end
    end
  end
end
