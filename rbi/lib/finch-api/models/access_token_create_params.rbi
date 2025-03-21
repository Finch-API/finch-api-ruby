# typed: strong

module FinchAPI
  module Models
    class AccessTokenCreateParams < FinchAPI::BaseModel
      extend FinchAPI::RequestParameters::Converter
      include FinchAPI::RequestParameters

      sig { returns(String) }
      attr_accessor :code

      sig { returns(T.nilable(String)) }
      attr_reader :client_id

      sig { params(client_id: String).void }
      attr_writer :client_id

      sig { returns(T.nilable(String)) }
      attr_reader :client_secret

      sig { params(client_secret: String).void }
      attr_writer :client_secret

      sig { returns(T.nilable(String)) }
      attr_reader :redirect_uri

      sig { params(redirect_uri: String).void }
      attr_writer :redirect_uri

      sig do
        params(
          code: String,
          client_id: String,
          client_secret: String,
          redirect_uri: String,
          request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash)
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
