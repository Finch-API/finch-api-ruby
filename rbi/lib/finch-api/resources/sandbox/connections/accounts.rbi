# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Connections
        class Accounts
          sig do
            params(
              company_id: String,
              provider_id: String,
              authentication_type: Symbol,
              products: T::Array[String],
              request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(FinchAPI::Models::Sandbox::Connections::AccountCreateResponse)
          end
          def create(company_id:, provider_id:, authentication_type: nil, products: nil, request_options: {})
          end

          sig do
            params(
              connection_status: Symbol,
              request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse)
          end
          def update(connection_status: nil, request_options: {})
          end

          sig { params(client: FinchAPI::Client).void }
          def initialize(client:)
          end
        end
      end
    end
  end
end
