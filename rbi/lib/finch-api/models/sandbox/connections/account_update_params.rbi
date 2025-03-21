# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Connections
        class AccountUpdateParams < FinchAPI::BaseModel
          extend FinchAPI::RequestParameters::Converter
          include FinchAPI::RequestParameters

          sig { returns(T.nilable(FinchAPI::Models::ConnectionStatusType::OrSymbol)) }
          def connection_status
          end

          sig do
            params(_: FinchAPI::Models::ConnectionStatusType::OrSymbol)
              .returns(FinchAPI::Models::ConnectionStatusType::OrSymbol)
          end
          def connection_status=(_)
          end

          sig do
            params(
              connection_status: FinchAPI::Models::ConnectionStatusType::OrSymbol,
              request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(connection_status: nil, request_options: {})
          end

          sig do
            override
              .returns(
                {
                  connection_status: FinchAPI::Models::ConnectionStatusType::OrSymbol,
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
