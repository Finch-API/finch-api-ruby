# typed: strong

module FinchAPI
  module Models
    class AccessTokenCreateParams < FinchAPI::BaseModel
      extend FinchAPI::RequestParameters::Converter
      include FinchAPI::RequestParameters

      sig { returns(String) }
      def code
      end

      sig { params(_: String).returns(String) }
      def code=(_)
      end

      sig { returns(T.nilable(String)) }
      def client_id
      end

      sig { params(_: String).returns(String) }
      def client_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def client_secret
      end

      sig { params(_: String).returns(String) }
      def client_secret=(_)
      end

      sig { returns(T.nilable(String)) }
      def redirect_uri
      end

      sig { params(_: String).returns(String) }
      def redirect_uri=(_)
      end

      sig do
        params(
          code: String,
          client_id: String,
          client_secret: String,
          redirect_uri: String,
          request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(code:, client_id: nil, client_secret: nil, redirect_uri: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              code: String,
              client_id: String,
              client_secret: String,
              redirect_uri: String,
              request_options: FinchAPI::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
