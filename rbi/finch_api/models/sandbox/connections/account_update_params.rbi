# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Connections
        class AccountUpdateParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::Sandbox::Connections::AccountUpdateParams,
                FinchAPI::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(FinchAPI::ConnectionStatusType::OrSymbol)) }
          attr_reader :connection_status

          sig do
            params(
              connection_status: FinchAPI::ConnectionStatusType::OrSymbol
            ).void
          end
          attr_writer :connection_status

          sig do
            params(
              connection_status: FinchAPI::ConnectionStatusType::OrSymbol,
              request_options: FinchAPI::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(connection_status: nil, request_options: {})
          end

          sig do
            override.returns(
              {
                connection_status: FinchAPI::ConnectionStatusType::OrSymbol,
                request_options: FinchAPI::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
