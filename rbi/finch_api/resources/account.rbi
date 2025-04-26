# typed: strong

module FinchAPI
  module Resources
    class Account
      # Disconnect one or more `access_token`s from your application.
      sig { params(request_options: FinchAPI::RequestOpts).returns(FinchAPI::Models::DisconnectResponse) }
      def disconnect(request_options: {}); end

      # Read account information associated with an `access_token`
      sig { params(request_options: FinchAPI::RequestOpts).returns(FinchAPI::Models::Introspection) }
      def introspect(request_options: {}); end

      # @api private
      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
