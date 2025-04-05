# typed: strong

module FinchAPI
  module Models
    class CreateAccessTokenResponse < FinchAPI::Internal::Type::BaseModel
      # The access token for the connection.
      sig { returns(String) }
      attr_accessor :access_token

      # [DEPRECATED] Use `connection_id` to identify the connection instead of this
      #   account ID.
      sig { returns(String) }
      attr_accessor :account_id

      # The type of application associated with a token.
      sig { returns(FinchAPI::Models::CreateAccessTokenResponse::ClientType::TaggedSymbol) }
      attr_accessor :client_type

      # [DEPRECATED] Use `connection_id` to identify the connection instead of this
      #   company ID.
      sig { returns(String) }
      attr_accessor :company_id

      # The Finch UUID of the connection associated with the `access_token`.
      sig { returns(String) }
      attr_accessor :connection_id

      # The type of the connection associated with the token.
      #
      #   - `provider` - connection to an external provider
      #   - `finch` - finch-generated data.
      sig { returns(FinchAPI::Models::CreateAccessTokenResponse::ConnectionType::TaggedSymbol) }
      attr_accessor :connection_type

      # An array of the authorized products associated with the `access_token`.
      sig { returns(T::Array[String]) }
      attr_accessor :products

      # The ID of the provider associated with the `access_token`.
      sig { returns(String) }
      attr_accessor :provider_id

      # The ID of your customer you provided to Finch when a connect session was created
      #   for this connection.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      # The RFC 8693 token type (Finch uses `bearer` tokens)
      sig { returns(T.nilable(String)) }
      attr_reader :token_type

      sig { params(token_type: String).void }
      attr_writer :token_type

      sig do
        params(
          access_token: String,
          account_id: String,
          client_type: FinchAPI::Models::CreateAccessTokenResponse::ClientType::OrSymbol,
          company_id: String,
          connection_id: String,
          connection_type: FinchAPI::Models::CreateAccessTokenResponse::ConnectionType::OrSymbol,
          products: T::Array[String],
          provider_id: String,
          customer_id: T.nilable(String),
          token_type: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        access_token:,
        account_id:,
        client_type:,
        company_id:,
        connection_id:,
        connection_type:,
        products:,
        provider_id:,
        customer_id: nil,
        token_type: nil
      ); end
      sig do
        override
          .returns(
            {
              access_token: String,
              account_id: String,
              client_type: FinchAPI::Models::CreateAccessTokenResponse::ClientType::TaggedSymbol,
              company_id: String,
              connection_id: String,
              connection_type: FinchAPI::Models::CreateAccessTokenResponse::ConnectionType::TaggedSymbol,
              products: T::Array[String],
              provider_id: String,
              customer_id: T.nilable(String),
              token_type: String
            }
          )
      end
      def to_hash; end

      # The type of application associated with a token.
      module ClientType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::CreateAccessTokenResponse::ClientType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, FinchAPI::Models::CreateAccessTokenResponse::ClientType::TaggedSymbol) }

        PRODUCTION = T.let(:production, FinchAPI::Models::CreateAccessTokenResponse::ClientType::TaggedSymbol)
        DEVELOPMENT = T.let(:development, FinchAPI::Models::CreateAccessTokenResponse::ClientType::TaggedSymbol)
        SANDBOX = T.let(:sandbox, FinchAPI::Models::CreateAccessTokenResponse::ClientType::TaggedSymbol)

        sig { override.returns(T::Array[FinchAPI::Models::CreateAccessTokenResponse::ClientType::TaggedSymbol]) }
        def self.values; end
      end

      # The type of the connection associated with the token.
      #
      #   - `provider` - connection to an external provider
      #   - `finch` - finch-generated data.
      module ConnectionType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, FinchAPI::Models::CreateAccessTokenResponse::ConnectionType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, FinchAPI::Models::CreateAccessTokenResponse::ConnectionType::TaggedSymbol) }

        PROVIDER = T.let(:provider, FinchAPI::Models::CreateAccessTokenResponse::ConnectionType::TaggedSymbol)
        FINCH = T.let(:finch, FinchAPI::Models::CreateAccessTokenResponse::ConnectionType::TaggedSymbol)

        sig { override.returns(T::Array[FinchAPI::Models::CreateAccessTokenResponse::ConnectionType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
