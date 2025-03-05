# typed: strong

module FinchAPI
  module Resources
    class Account
      sig do
        params(request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])))
          .returns(FinchAPI::Models::DisconnectResponse)
      end
      def disconnect(request_options: {})
      end

      sig do
        params(request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])))
          .returns(FinchAPI::Models::Introspection)
      end
      def introspect(request_options: {})
      end

      sig { params(client: FinchAPI::Client).void }
      def initialize(client:)
      end
    end
  end
end
