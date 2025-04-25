# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Connections
        # @return [FinchAPI::Resources::Sandbox::Connections::Accounts]
        attr_reader :accounts

        # Some parameter documentations has been truncated, see
        # {FinchAPI::Models::Sandbox::ConnectionCreateParams} for more details.
        #
        # Create a new connection (new company/provider pair) with a new account
        #
        # @overload create(provider_id:, authentication_type: nil, employee_size: nil, products: nil, request_options: {})
        #
        # @param provider_id [String] The provider associated with the connection
        #
        # @param authentication_type [Symbol, FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType]
        #
        # @param employee_size [Integer] Optional: the size of the employer to be created with this connection. Defaults
        # ...
        #
        # @param products [Array<String>]
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::Sandbox::ConnectionCreateResponse]
        #
        # @see FinchAPI::Models::Sandbox::ConnectionCreateParams
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

        # @api private
        #
        # @param client [FinchAPI::Client]
        def initialize(client:)
          @client = client
          @accounts = FinchAPI::Resources::Sandbox::Connections::Accounts.new(client: client)
        end
      end
    end
  end
end
