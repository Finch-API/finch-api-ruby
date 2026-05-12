# typed: strong

module FinchAPI
  module Resources
    class Account
      # Disconnect one or more `access_token`s from your application.
      sig do
        params(request_options: FinchAPI::RequestOptions::OrHash).returns(
          FinchAPI::DisconnectResponse
        )
      end
      def disconnect(request_options: {})
      end

      # Disconnect entity(s) from a connection without affecting other entities
      # associated with the same connection.
      sig do
        params(
          entity_ids: T::Array[String],
          request_options: FinchAPI::RequestOptions::OrHash
        ).returns(FinchAPI::DisconnectEntityResponse)
      end
      def disconnect_entity(
        # Array of entity UUIDs to disconnect. At least one entity ID must be provided.
        entity_ids:,
        request_options: {}
      )
      end

      # Read account information associated with an `access_token`
      sig do
        params(request_options: FinchAPI::RequestOptions::OrHash).returns(
          FinchAPI::Introspection
        )
      end
      def introspect(request_options: {})
      end

      # @api private
      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
