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
