# typed: strong

module FinchAPI
  module Resources
    class RequestForwarding
      # The Forward API allows you to make direct requests to an employment system. If
      #   Finch’s unified API doesn’t have a data model that cleanly fits your needs, then
      #   Forward allows you to push or pull data models directly against an integration’s
      #   API.
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
