# frozen_string_literal: true

module FinchAPI
  module Resources
    class Connect
      class Sessions
        # Some parameter documentations has been truncated, see
        # {FinchAPI::Models::Connect::SessionNewParams} for more details.
        #
        # Create a new connect session for an employer
        #
        # @overload new(customer_id:, customer_name:, products:, customer_email: nil, integration: nil, manual: nil, minutes_to_expire: nil, redirect_uri: nil, sandbox: nil, request_options: {})
        #
        # @param customer_id [String]
        #
        # @param customer_name [String]
        #
        # @param products [Array<Symbol, FinchAPI::Connect::SessionNewParams::Product>]
        #
        # @param customer_email [String, nil]
        #
        # @param integration [FinchAPI::Connect::SessionNewParams::Integration, nil]
        #
        # @param manual [Boolean, nil]
        #
        # @param minutes_to_expire [Float, nil] The number of minutes until the session expires (defaults to 43,200, which is 30
        #
        # @param redirect_uri [String, nil]
        #
        # @param sandbox [Symbol, FinchAPI::Connect::SessionNewParams::Sandbox, nil]
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::Connect::SessionNewResponse]
        #
        # @see FinchAPI::Models::Connect::SessionNewParams
        def new(params)
          parsed, options = FinchAPI::Connect::SessionNewParams.dump_request(params)
          @client.request(
            method: :post,
            path: "connect/sessions",
            body: parsed,
            model: FinchAPI::Models::Connect::SessionNewResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {FinchAPI::Models::Connect::SessionReauthenticateParams} for more details.
        #
        # Create a new Connect session for reauthenticating an existing connection
        #
        # @overload reauthenticate(connection_id:, minutes_to_expire: nil, products: nil, redirect_uri: nil, request_options: {})
        #
        # @param connection_id [String] The ID of the existing connection to reauthenticate
        #
        # @param minutes_to_expire [Integer, nil] The number of minutes until the session expires (defaults to 43,200, which is 30
        #
        # @param products [Array<Symbol, FinchAPI::Connect::SessionReauthenticateParams::Product>, nil] The products to request access to (optional for reauthentication)
        #
        # @param redirect_uri [String, nil] The URI to redirect to after the Connect flow is completed
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::Connect::SessionReauthenticateResponse]
        #
        # @see FinchAPI::Models::Connect::SessionReauthenticateParams
        def reauthenticate(params)
          parsed, options = FinchAPI::Connect::SessionReauthenticateParams.dump_request(params)
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
