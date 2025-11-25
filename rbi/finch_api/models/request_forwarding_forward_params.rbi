# typed: strong

module FinchAPI
  module Models
    class RequestForwardingForwardParams < FinchAPI::Internal::Type::BaseModel
      extend FinchAPI::Internal::Type::RequestParameters::Converter
      include FinchAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            FinchAPI::RequestForwardingForwardParams,
            FinchAPI::Internal::AnyHash
          )
        end

      # The HTTP method for the forwarded request. Valid values include: `GET` , `POST`
      # , `PUT` , `DELETE` , and `PATCH`.
      sig { returns(String) }
      attr_accessor :method_

      # The URL route path for the forwarded request. This value must begin with a
      # forward-slash ( / ) and may only contain alphanumeric characters, hyphens, and
      # underscores.
      sig { returns(String) }
      attr_accessor :route

      # The body for the forwarded request. This value must be specified as either a
      # string or a valid JSON object.
      sig { returns(T.nilable(String)) }
      attr_accessor :data

      # The query parameters for the forwarded request. This value must be specified as
      # a valid JSON object rather than a query string.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
      attr_accessor :params

      # The HTTP headers to include on the forwarded request. This value must be
      # specified as an object of key-value pairs. Example:
      # `{"Content-Type": "application/xml", "X-API-Version": "v1" }`
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
      attr_accessor :request_headers

      sig do
        params(
          method_: String,
          route: String,
          data: T.nilable(String),
          params: T.nilable(T::Hash[Symbol, T.nilable(T.anything)]),
          request_headers: T.nilable(T::Hash[Symbol, T.nilable(T.anything)]),
          request_options: FinchAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The HTTP method for the forwarded request. Valid values include: `GET` , `POST`
        # , `PUT` , `DELETE` , and `PATCH`.
        method_:,
        # The URL route path for the forwarded request. This value must begin with a
        # forward-slash ( / ) and may only contain alphanumeric characters, hyphens, and
        # underscores.
        route:,
        # The body for the forwarded request. This value must be specified as either a
        # string or a valid JSON object.
        data: nil,
        # The query parameters for the forwarded request. This value must be specified as
        # a valid JSON object rather than a query string.
        params: nil,
        # The HTTP headers to include on the forwarded request. This value must be
        # specified as an object of key-value pairs. Example:
        # `{"Content-Type": "application/xml", "X-API-Version": "v1" }`
        request_headers: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            method_: String,
            route: String,
            data: T.nilable(String),
            params: T.nilable(T::Hash[Symbol, T.nilable(T.anything)]),
            request_headers: T.nilable(T::Hash[Symbol, T.nilable(T.anything)]),
            request_options: FinchAPI::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
