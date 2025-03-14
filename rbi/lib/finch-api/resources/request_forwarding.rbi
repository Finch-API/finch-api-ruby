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
      def forward(
        # The HTTP method for the forwarded request. Valid values include: `GET` , `POST`
        #   , `PUT` , `DELETE` , and `PATCH`.
        method_:,
        # The URL route path for the forwarded request. This value must begin with a
        #   forward-slash ( / ) and may only contain alphanumeric characters, hyphens, and
        #   underscores.
        route:,
        # The body for the forwarded request. This value must be specified as either a
        #   string or a valid JSON object.
        data: nil,
        # The HTTP headers to include on the forwarded request. This value must be
        #   specified as an object of key-value pairs. Example:
        #   `{"Content-Type": "application/xml", "X-API-Version": "v1" }`
        headers: nil,
        # The query parameters for the forwarded request. This value must be specified as
        #   a valid JSON object rather than a query string.
        params: nil,
        request_options: {}
      )
      end

      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
