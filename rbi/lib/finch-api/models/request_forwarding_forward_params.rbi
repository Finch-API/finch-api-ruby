# typed: strong

module FinchAPI
  module Models
    class RequestForwardingForwardParams < FinchAPI::BaseModel
      extend FinchAPI::RequestParameters::Converter
      include FinchAPI::RequestParameters

      sig { returns(String) }
      def method_
      end

      sig { params(_: String).returns(String) }
      def method_=(_)
      end

      sig { returns(String) }
      def route
      end

      sig { params(_: String).returns(String) }
      def route=(_)
      end

      sig { returns(T.nilable(String)) }
      def data
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def data=(_)
      end

      sig { returns(T.nilable(T.anything)) }
      def headers
      end

      sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
      def headers=(_)
      end

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
          request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
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
