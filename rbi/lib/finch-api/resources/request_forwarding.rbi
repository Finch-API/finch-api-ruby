# typed: strong

module FinchAPI
  module Resources
    class RequestForwarding
      sig do
        params(
          method_: String,
          route: String,
          data: T.nilable(String),
          headers: T.nilable(T.anything),
          params: T.nilable(T.anything),
          request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(FinchAPI::Models::RequestForwardingForwardResponse)
      end
      def forward(method_:, route:, data: nil, headers: nil, params: nil, request_options: {})
      end

      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
