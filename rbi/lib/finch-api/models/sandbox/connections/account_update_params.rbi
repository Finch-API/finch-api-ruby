# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Connections
        class AccountUpdateParams < FinchAPI::BaseModel
          extend FinchAPI::RequestParameters::Converter
          include FinchAPI::RequestParameters

          sig { returns(T.nilable(Symbol)) }
          def connection_status
          end

          sig { params(_: Symbol).returns(Symbol) }
          def connection_status=(_)
          end

          sig do
            params(
              connection_status: Symbol,
              request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(connection_status: nil, request_options: {})
          end

          sig { override.returns({connection_status: Symbol, request_options: FinchAPI::RequestOptions}) }
          def to_hash
          end
        end
      end
    end
  end
end
