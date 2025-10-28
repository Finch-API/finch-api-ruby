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
        # @overload new(customer_email:, customer_id:, customer_name:, integration:, manual:, minutes_to_expire:, products:, redirect_uri:, sandbox:, request_options: {})
        #
        # @param customer_email [String, nil] Email address of the customer
        #
        # @param customer_id [String] Unique identifier for the customer
        #
        # @param customer_name [String] Name of the customer
        #
        # @param integration [FinchAPI::Models::Connect::SessionNewParams::Integration, nil] Integration configuration for the connect session
        #
        # @param manual [Boolean, nil] Enable manual authentication mode
        #
        # @param minutes_to_expire [Float, nil] The number of minutes until the session expires (defaults to 129,600, which is 9
        #
        # @param products [Array<Symbol, FinchAPI::Models::Connect::SessionNewParams::Product>] The Finch products to request access to
        #
        # @param redirect_uri [String, nil] The URI to redirect to after the Connect flow is completed
        #
        # @param sandbox [Symbol, FinchAPI::Models::Connect::SessionNewParams::Sandbox, nil] Sandbox mode for testing
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
        # @overload reauthenticate(connection_id:, minutes_to_expire:, products:, redirect_uri:, request_options: {})
        #
        # @param connection_id [String] The ID of the existing connection to reauthenticate
        #
        # @param minutes_to_expire [Integer] The number of minutes until the session expires (defaults to 43,200, which is 30
        #
        # @param products [Array<Symbol, FinchAPI::Models::Connect::SessionReauthenticateParams::Product>, nil] The products to request access to (optional for reauthentication)
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
