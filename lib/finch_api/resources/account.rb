# frozen_string_literal: true

module FinchAPI
  module Resources
    class Account
      # Disconnect one or more `access_token`s from your application.
      #
      # @overload disconnect(request_options: {})
      #
      # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [FinchAPI::DisconnectResponse]
      #
      # @see FinchAPI::Models::AccountDisconnectParams
      def disconnect(params = {})
        @client.request(
          method: :post,
          path: "disconnect",
          model: FinchAPI::DisconnectResponse,
          options: params[:request_options]
        )
      end

      # Read account information associated with an `access_token`
      #
      # @overload introspect(request_options: {})
      #
      # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [FinchAPI::Introspection]
      #
      # @see FinchAPI::Models::AccountIntrospectParams
      def introspect(params = {})
        @client.request(
          method: :get,
          path: "introspect",
          model: FinchAPI::Introspection,
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
