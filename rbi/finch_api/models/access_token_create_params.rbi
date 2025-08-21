# typed: strong

module FinchAPI
  module Models
    class AccessTokenCreateParams < FinchAPI::Internal::Type::BaseModel
      extend FinchAPI::Internal::Type::RequestParameters::Converter
      include FinchAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(FinchAPI::AccessTokenCreateParams, FinchAPI::Internal::AnyHash)
        end

      # The client ID for your application
      sig { returns(String) }
      attr_accessor :client_id

      # The client secret for your application
      sig { returns(String) }
      attr_accessor :client_secret

      # The authorization code received from the authorization server
      sig { returns(String) }
      attr_accessor :code

      # The redirect URI used in the authorization request (optional)
      sig { returns(T.nilable(String)) }
      attr_reader :redirect_uri

      sig { params(redirect_uri: String).void }
      attr_writer :redirect_uri

      sig do
        params(
          client_id: String,
          client_secret: String,
          code: String,
          redirect_uri: String,
          request_options: FinchAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The client ID for your application
        client_id:,
        # The client secret for your application
        client_secret:,
        # The authorization code received from the authorization server
        code:,
        # The redirect URI used in the authorization request (optional)
        redirect_uri: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            client_id: String,
            client_secret: String,
            code: String,
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
