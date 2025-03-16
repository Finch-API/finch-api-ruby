# typed: strong

module FinchAPI
  module Models
    class CreateAccessTokenResponse < FinchAPI::BaseModel
      # The access token for the connection.
      sig { returns(String) }
      def access_token
      end

      sig { params(_: String).returns(String) }
      def access_token=(_)
      end

      # [DEPRECATED] Use `connection_id` to identify the connection instead of this
      #   account ID.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The type of application associated with a token.
      sig { returns(Symbol) }
      def client_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def client_type=(_)
      end

      # [DEPRECATED] Use `connection_id` to identify the connection instead of this
      #   company ID.
      sig { returns(String) }
      def company_id
      end

      sig { params(_: String).returns(String) }
      def company_id=(_)
      end

      # The Finch UUID of the connection associated with the `access_token`.
      sig { returns(String) }
      def connection_id
      end

      sig { params(_: String).returns(String) }
      def connection_id=(_)
      end

      # The type of the connection associated with the token.
      #
      #   - `provider` - connection to an external provider
      #   - `finch` - finch-generated data.
      sig { returns(Symbol) }
      def connection_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def connection_type=(_)
      end

      # An array of the authorized products associated with the `access_token`.
      sig { returns(T::Array[String]) }
      def products
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def products=(_)
      end

      # The ID of the provider associated with the `access_token`.
      sig { returns(String) }
      def provider_id
      end

      sig { params(_: String).returns(String) }
      def provider_id=(_)
      end

      # The ID of your customer you provided to Finch when a connect session was created
      #   for this connection.
      sig { returns(T.nilable(String)) }
      def customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_id=(_)
      end

      # The RFC 8693 token type (Finch uses `bearer` tokens)
      sig { returns(T.nilable(String)) }
      def token_type
      end

      sig { params(_: String).returns(String) }
      def token_type=(_)
      end

      sig do
        params(
          access_token: String,
          account_id: String,
          client_type: Symbol,
          company_id: String,
          connection_id: String,
          connection_type: Symbol,
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
      )
      end

      sig do
        override
          .returns(
            {
              access_token: String,
              account_id: String,
              client_type: Symbol,
              company_id: String,
              connection_id: String,
              connection_type: Symbol,
              products: T::Array[String],
              provider_id: String,
              customer_id: T.nilable(String),
              token_type: String
            }
          )
      end
      def to_hash
      end

      # The type of application associated with a token.
      class ClientType < FinchAPI::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        PRODUCTION = :production
        DEVELOPMENT = :development
        SANDBOX = :sandbox
      end

      # The type of the connection associated with the token.
      #
      #   - `provider` - connection to an external provider
      #   - `finch` - finch-generated data.
      class ConnectionType < FinchAPI::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        PROVIDER = :provider
        FINCH = :finch
      end
    end
  end
end
