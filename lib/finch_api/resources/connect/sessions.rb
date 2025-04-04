# frozen_string_literal: true

module FinchAPI
  module Resources
    class Connect
      class Sessions
        # Create a new connect session for an employer
        #
        # @overload new(customer_id:, customer_name:, products:, customer_email: nil, integration: nil, manual: nil, minutes_to_expire: nil, redirect_uri: nil, sandbox: nil, request_options: {})
        #
        # @param customer_id [String]
        # @param customer_name [String]
        # @param products [Array<Symbol, FinchAPI::Models::Connect::SessionNewParams::Product>]
        # @param customer_email [String, nil]
        # @param integration [FinchAPI::Models::Connect::SessionNewParams::Integration, nil]
        # @param manual [Boolean, nil]
        # @param minutes_to_expire [Float, nil]
        # @param redirect_uri [String, nil]
        # @param sandbox [Symbol, FinchAPI::Models::Connect::SessionNewParams::Sandbox, nil]
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
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
        # @overload reauthenticate(connection_id:, minutes_to_expire: nil, products: nil, redirect_uri: nil, request_options: {})
        #
        # @param connection_id [String]
        # @param minutes_to_expire [Integer, nil]
        # @param products [Array<Symbol, FinchAPI::Models::Connect::SessionReauthenticateParams::Product>, nil]
        # @param redirect_uri [String, nil]
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
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
