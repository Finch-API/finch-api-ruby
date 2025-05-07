# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Jobs
        class ConfigurationRetrieveParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          OrHash =
            T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

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
