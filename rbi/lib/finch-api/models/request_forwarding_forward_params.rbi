# typed: strong

module FinchAPI
  module Models
    class RequestForwardingForwardParams < FinchAPI::BaseModel
      extend FinchAPI::RequestParameters::Converter
      include FinchAPI::RequestParameters

      # The HTTP method for the forwarded request. Valid values include: `GET` , `POST`
      #   , `PUT` , `DELETE` , and `PATCH`.
      sig { returns(String) }
      def method_
      end

      sig { params(_: String).returns(String) }
      def method_=(_)
      end

      # The URL route path for the forwarded request. This value must begin with a
      #   forward-slash ( / ) and may only contain alphanumeric characters, hyphens, and
      #   underscores.
      sig { returns(String) }
      def route
      end

      sig { params(_: String).returns(String) }
      def route=(_)
      end

      # The body for the forwarded request. This value must be specified as either a
      #   string or a valid JSON object.
      sig { returns(T.nilable(String)) }
      def data
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def data=(_)
      end

      # The HTTP headers to include on the forwarded request. This value must be
      #   specified as an object of key-value pairs. Example:
      #   `{"Content-Type": "application/xml", "X-API-Version": "v1" }`
      sig { returns(T.nilable(T.anything)) }
      def headers
      end

      sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
      def headers=(_)
      end

      # The query parameters for the forwarded request. This value must be specified as
      #   a valid JSON object rather than a query string.
      sig { returns(T.nilable(T.anything)) }
      def params
      end

      sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
      def params=(_)
      end

      sig do
        params(
          method_: String,
          route: String,
          data: T.nilable(String),
          headers: T.nilable(T.anything),
          params: T.nilable(T.anything),
          request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(method_:, route:, data: nil, headers: nil, params: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              method_: String,
              route: String,
              data: T.nilable(String),
              headers: T.nilable(T.anything),
              params: T.nilable(T.anything),
              request_options: FinchAPI::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
