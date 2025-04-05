# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Connections
        class Accounts
          # Create a new account for an existing connection (company/provider pair)
          #
          # @overload create(company_id:, provider_id:, authentication_type: nil, products: nil, request_options: {})
          #
          # @param company_id [String]
          # @param provider_id [String]
          # @param authentication_type [Symbol, FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType]
          # @param products [Array<String>]
          # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [FinchAPI::Models::Sandbox::Connections::AccountCreateResponse]
          #
          # @see FinchAPI::Models::Sandbox::Connections::AccountCreateParams
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
          # how the Finch API responds.
          #
          # @overload update(connection_status: nil, request_options: {})
          #
          # @param connection_status [Symbol, FinchAPI::Models::ConnectionStatusType]
          # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse]
          #
          # @see FinchAPI::Models::Sandbox::Connections::AccountUpdateParams
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

          # @api private
          #
          # @param client [FinchAPI::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
