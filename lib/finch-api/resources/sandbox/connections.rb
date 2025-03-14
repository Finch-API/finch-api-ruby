# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Connections
        # @return [FinchAPI::Resources::Sandbox::Connections::Accounts]
        attr_reader :accounts

        # Create a new connection (new company/provider pair) with a new account
        #
        # @param params [FinchAPI::Models::Sandbox::ConnectionCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :provider_id The provider associated with the connection
        #
        #   @option params [Symbol, FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType] :authentication_type
        #
        #   @option params [Integer] :employee_size Optional: the size of the employer to be created with this connection. Defaults
        #     to 20. Note that if this is higher than 100, historical payroll data will not be
        #     generated, and instead only one pay period will be created.
        #
        #   @option params [Array<String>] :products
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::Models::Sandbox::ConnectionCreateResponse]
        def create(params)
          parsed, options = FinchAPI::Models::Sandbox::ConnectionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "sandbox/connections",
            body: parsed,
            model: FinchAPI::Models::Sandbox::ConnectionCreateResponse,
            options: options
          )
        end

        # @param client [FinchAPI::Client]
        def initialize(client:)
          @client = client
          @accounts = FinchAPI::Resources::Sandbox::Connections::Accounts.new(client: client)
        end
      end
    end
  end
end
