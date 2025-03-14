# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Connections
        class Accounts
          # Create a new account for an existing connection (company/provider pair)
          #
          # @param params [FinchAPI::Models::Sandbox::Connections::AccountCreateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :company_id
          #
          #   @option params [String] :provider_id The provider associated with the `access_token`
          #
          #   @option params [Symbol, FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType] :authentication_type
          #
          #   @option params [Array<String>] :products Optional, defaults to Organization products (`company`, `directory`,
          #     `employment`, `individual`)
          #
          #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [FinchAPI::Models::Sandbox::Connections::AccountCreateResponse]
          def create(params)
            parsed, options = FinchAPI::Models::Sandbox::Connections::AccountCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "sandbox/connections/accounts",
              body: parsed,
              model: FinchAPI::Models::Sandbox::Connections::AccountCreateResponse,
              options: options
            )
          end

          # Update an existing sandbox account. Change the connection status to understand
          #   how the Finch API responds.
          #
          # @param params [FinchAPI::Models::Sandbox::Connections::AccountUpdateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Symbol, FinchAPI::Models::ConnectionStatusType] :connection_status
          #
          #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse]
          def update(params = {})
            parsed, options = FinchAPI::Models::Sandbox::Connections::AccountUpdateParams.dump_request(params)
            @client.request(
              method: :put,
              path: "sandbox/connections/accounts",
              body: parsed,
              model: FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse,
              options: options
            )
          end

          # @param client [FinchAPI::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
