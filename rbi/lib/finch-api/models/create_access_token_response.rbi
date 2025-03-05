# typed: strong

module FinchAPI
  module Models
    class CreateAccessTokenResponse < FinchAPI::BaseModel
      sig { returns(String) }
      def access_token
      end

      sig { params(_: String).returns(String) }
      def access_token=(_)
      end

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(Symbol) }
      def client_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def client_type=(_)
      end

      sig { returns(String) }
      def company_id
      end

      sig { params(_: String).returns(String) }
      def company_id=(_)
      end

      sig { returns(String) }
      def connection_id
      end

      sig { params(_: String).returns(String) }
      def connection_id=(_)
      end

      sig { returns(Symbol) }
      def connection_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def connection_type=(_)
      end

      sig { returns(T::Array[String]) }
      def products
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def products=(_)
      end

      sig { returns(String) }
      def provider_id
      end

      sig { params(_: String).returns(String) }
      def provider_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_id=(_)
      end

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
          .void
      end
      def initialize(
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

      class ClientType < FinchAPI::Enum
        abstract!

        PRODUCTION = :production
        DEVELOPMENT = :development
        SANDBOX = :sandbox

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class ConnectionType < FinchAPI::Enum
        abstract!

        PROVIDER = :provider
        FINCH = :finch

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
