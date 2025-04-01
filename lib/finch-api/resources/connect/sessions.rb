# frozen_string_literal: true

module FinchAPI
  module Resources
    class Connect
      class Sessions
        # Create a new connect session for an employer
        #
        # @param params [FinchAPI::Models::Connect::SessionNewParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :customer_id
        #
        #   @option params [String] :customer_name
        #
        #   @option params [Array<Symbol, FinchAPI::Models::Connect::SessionNewParams::Product>] :products
        #
        #   @option params [String, nil] :customer_email
        #
        #   @option params [FinchAPI::Models::Connect::SessionNewParams::Integration, nil] :integration
        #
        #   @option params [Boolean, nil] :manual
        #
        #   @option params [Float, nil] :minutes_to_expire The number of minutes until the session expires (defaults to 43,200, which is 30
        #     days)
        #
        #   @option params [String, nil] :redirect_uri
        #
        #   @option params [Symbol, FinchAPI::Models::Connect::SessionNewParams::Sandbox, nil] :sandbox
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::Models::Connect::SessionNewResponse]
        #
        # @see FinchAPI::Models::Connect::SessionNewParams
        def new(params)
          parsed, options = FinchAPI::Models::Connect::SessionNewParams.dump_request(params)
          @client.request(
            method: :post,
            path: "connect/sessions",
            body: parsed,
            model: FinchAPI::Models::Connect::SessionNewResponse,
            options: options
          )
        end

        # Create a new Connect session for reauthenticating an existing connection
        #
        # @param params [FinchAPI::Models::Connect::SessionReauthenticateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :connection_id The ID of the existing connection to reauthenticate
        #
        #   @option params [Integer, nil] :minutes_to_expire The number of minutes until the session expires (defaults to 43,200, which is 30
        #     days)
        #
        #   @option params [Array<Symbol, FinchAPI::Models::Connect::SessionReauthenticateParams::Product>, nil] :products The products to request access to (optional for reauthentication)
        #
        #   @option params [String, nil] :redirect_uri The URI to redirect to after the Connect flow is completed
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::Models::Connect::SessionReauthenticateResponse]
        #
        # @see FinchAPI::Models::Connect::SessionReauthenticateParams
        def reauthenticate(params)
          parsed, options = FinchAPI::Models::Connect::SessionReauthenticateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "connect/sessions/reauthenticate",
            body: parsed,
            model: FinchAPI::Models::Connect::SessionReauthenticateResponse,
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
