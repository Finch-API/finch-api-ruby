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
      # @return [FinchAPI::Models::DisconnectResponse]
      #
      # @see FinchAPI::Models::AccountDisconnectParams
      def disconnect(params = {})
        @client.request(
          method: :post,
          path: "disconnect",
          model: FinchAPI::DisconnectResponse,
          security: {bearer_auth: true},
          options: params[:request_options]
        )
      end

      # Disconnect entity(s) from a connection without affecting other entities
      # associated with the same connection.
      #
      # @overload disconnect_entity(entity_ids:, request_options: {})
      #
      # @param entity_ids [Array<String>] Array of entity UUIDs to disconnect. At least one entity ID must be provided.
      #
      # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [FinchAPI::Models::DisconnectEntityResponse]
      #
      # @see FinchAPI::Models::AccountDisconnectEntityParams
      def disconnect_entity(params)
        parsed, options = FinchAPI::AccountDisconnectEntityParams.dump_request(params)
        @client.request(
          method: :post,
          path: "disconnect-entity",
          body: parsed,
          model: FinchAPI::DisconnectEntityResponse,
          security: {bearer_auth: true},
          options: options
        )
      end

      # Read account information associated with an `access_token`
      #
      # @overload introspect(request_options: {})
      #
      # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [FinchAPI::Models::Introspection]
      #
      # @see FinchAPI::Models::AccountIntrospectParams
      def introspect(params = {})
        @client.request(
          method: :get,
          path: "introspect",
          model: FinchAPI::Introspection,
          security: {bearer_auth: true},
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
