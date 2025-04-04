# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Connections
        class Accounts
          # Create a new account for an existing connection (company/provider pair)
          sig do
            params(
              company_id: String,
              provider_id: String,
              authentication_type: FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::OrSymbol,
              products: T::Array[String],
              request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash))
            )
              .returns(FinchAPI::Models::Sandbox::Connections::AccountCreateResponse)
          end
          def create(
            company_id:,
            # The provider associated with the `access_token`
            provider_id:,
            authentication_type: nil,
            # Optional, defaults to Organization products (`company`, `directory`,
            #   `employment`, `individual`)
            products: nil,
            request_options: {}
          )
          end

          # Update an existing sandbox account. Change the connection status to understand
          #   how the Finch API responds.
          sig do
            params(
              connection_status: FinchAPI::Models::ConnectionStatusType::OrSymbol,
              request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash))
            )
              .returns(FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse)
          end
          def update(connection_status: nil, request_options: {})
          end

          # @api private
          sig { params(client: FinchAPI::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
