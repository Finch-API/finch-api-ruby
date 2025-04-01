# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Connections
        class AccountUpdateParams < FinchAPI::BaseModel
          extend FinchAPI::Type::RequestParameters::Converter
          include FinchAPI::RequestParameters

          sig { returns(T.nilable(FinchAPI::Models::ConnectionStatusType::OrSymbol)) }
          attr_reader :connection_status

          sig { params(connection_status: FinchAPI::Models::ConnectionStatusType::OrSymbol).void }
          attr_writer :connection_status

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
