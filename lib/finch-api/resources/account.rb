# frozen_string_literal: true

module FinchAPI
  module Resources
    class Account
      # Disconnect one or more `access_token`s from your application.
      #
      # @param params [FinchAPI::Models::AccountDisconnectParams, Hash{Symbol=>Object}] .
      #
      #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [FinchAPI::Models::DisconnectResponse]
      #
      # @see FinchAPI::Models::AccountDisconnectParams
      def disconnect(params = {})
        @client.request(
          method: :post,
          path: "disconnect",
          model: FinchAPI::Models::DisconnectResponse,
          options: params[:request_options]
        )
      end

      # Read account information associated with an `access_token`
      #
      # @param params [FinchAPI::Models::AccountIntrospectParams, Hash{Symbol=>Object}] .
      #
      #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [FinchAPI::Models::Introspection]
      #
      # @see FinchAPI::Models::AccountIntrospectParams
      def introspect(params = {})
        @client.request(
          method: :get,
          path: "introspect",
          model: FinchAPI::Models::Introspection,
          options: params[:request_options]
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
