# typed: strong

module FinchAPI
  module Models
    class Introspection < FinchAPI::BaseModel
      # [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
      #   instead of this account ID.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(T::Array[FinchAPI::Models::Introspection::AuthenticationMethod]) }
      def authentication_methods
      end

      sig do
        params(_: T::Array[FinchAPI::Models::Introspection::AuthenticationMethod])
          .returns(T::Array[FinchAPI::Models::Introspection::AuthenticationMethod])
      end
      def authentication_methods=(_)
      end

      # The client ID of the application associated with the `access_token`.
      sig { returns(String) }
      def client_id
      end

      sig { params(_: String).returns(String) }
      def client_id=(_)
      end

      # The type of application associated with a token.
      sig { returns(Symbol) }
      def client_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def client_type=(_)
      end

      # [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
      #   instead of this company ID.
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

      sig { returns(FinchAPI::Models::Introspection::ConnectionStatus) }
      def connection_status
      end

      sig do
        params(_: FinchAPI::Models::Introspection::ConnectionStatus)
          .returns(FinchAPI::Models::Introspection::ConnectionStatus)
      end
      def connection_status=(_)
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

      # The email of your customer you provided to Finch when a connect session was
      #   created for this connection.
      sig { returns(T.nilable(String)) }
      def customer_email
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_email=(_)
      end

      # The ID of your customer you provided to Finch when a connect session was created
      #   for this connection.
      sig { returns(T.nilable(String)) }
      def customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_id=(_)
      end

      # The name of your customer you provided to Finch when a connect session was
      #   created for this connection.
      sig { returns(T.nilable(String)) }
      def customer_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_name=(_)
      end

      # Whether the connection associated with the `access_token` uses the Assisted
      #   Connect Flow. (`true` if using Assisted Connect, `false` if connection is
      #   automated)
      sig { returns(T::Boolean) }
      def manual
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def manual=(_)
      end

      # [DEPRECATED] Use `provider_id` to identify the provider instead of this payroll
      #   provider ID.
      sig { returns(String) }
      def payroll_provider_id
      end

      sig { params(_: String).returns(String) }
      def payroll_provider_id=(_)
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

      # The account username used for login associated with the `access_token`.
      sig { returns(String) }
      def username
      end

      sig { params(_: String).returns(String) }
      def username=(_)
      end

      sig do
        params(
          account_id: String,
          authentication_methods: T::Array[FinchAPI::Models::Introspection::AuthenticationMethod],
          client_id: String,
          client_type: Symbol,
          company_id: String,
          connection_id: String,
          connection_status: FinchAPI::Models::Introspection::ConnectionStatus,
          connection_type: Symbol,
          customer_email: T.nilable(String),
          customer_id: T.nilable(String),
          customer_name: T.nilable(String),
          manual: T::Boolean,
          payroll_provider_id: String,
          products: T::Array[String],
          provider_id: String,
          username: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_id:,
        authentication_methods:,
        client_id:,
        client_type:,
        company_id:,
        connection_id:,
        connection_status:,
        connection_type:,
        customer_email:,
        customer_id:,
        customer_name:,
        manual:,
        payroll_provider_id:,
        products:,
        provider_id:,
        username:
      )
      end

      sig do
        override
          .returns(
            {
              account_id: String,
              authentication_methods: T::Array[FinchAPI::Models::Introspection::AuthenticationMethod],
              client_id: String,
              client_type: Symbol,
              company_id: String,
              connection_id: String,
              connection_status: FinchAPI::Models::Introspection::ConnectionStatus,
              connection_type: Symbol,
              customer_email: T.nilable(String),
              customer_id: T.nilable(String),
              customer_name: T.nilable(String),
              manual: T::Boolean,
              payroll_provider_id: String,
              products: T::Array[String],
              provider_id: String,
              username: String
            }
          )
      end
      def to_hash
      end

      class AuthenticationMethod < FinchAPI::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus)) }
        def connection_status
        end

        sig do
          params(_: FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus)
            .returns(FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus)
        end
        def connection_status=(_)
        end

        # An array of the authorized products associated with the `access_token`.
        sig { returns(T.nilable(T::Array[String])) }
        def products
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def products=(_)
        end

        # The type of authentication method.
        sig { returns(T.nilable(Symbol)) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig do
          params(
            connection_status: FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus,
            products: T::Array[String],
            type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(connection_status: nil, products: nil, type: nil)
        end

        sig do
          override
            .returns(
              {
                connection_status: FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus,
                products: T::Array[String],
                type: Symbol
              }
            )
        end
        def to_hash
        end

        class ConnectionStatus < FinchAPI::BaseModel
          sig { returns(T.nilable(String)) }
          def message
          end

          sig { params(_: String).returns(String) }
          def message=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def status
          end

          sig { params(_: Symbol).returns(Symbol) }
          def status=(_)
          end

          sig { params(message: String, status: Symbol).returns(T.attached_class) }
          def self.new(message: nil, status: nil)
          end

          sig { override.returns({message: String, status: Symbol}) }
          def to_hash
          end
        end

        # The type of authentication method.
        class Type < FinchAPI::Enum
          abstract!

          ASSISTED = :assisted
          CREDENTIAL = :credential
          API_TOKEN = :api_token
          API_CREDENTIAL = :api_credential
          OAUTH = :oauth

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      # The type of application associated with a token.
      class ClientType < FinchAPI::Enum
        abstract!

        PRODUCTION = :production
        DEVELOPMENT = :development
        SANDBOX = :sandbox

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class ConnectionStatus < FinchAPI::BaseModel
        sig { returns(T.nilable(String)) }
        def message
        end

        sig { params(_: String).returns(String) }
        def message=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        sig { params(message: String, status: Symbol).returns(T.attached_class) }
        def self.new(message: nil, status: nil)
        end

        sig { override.returns({message: String, status: Symbol}) }
        def to_hash
        end
      end

      # The type of the connection associated with the token.
      #
      #   - `provider` - connection to an external provider
      #   - `finch` - finch-generated data.
      class ConnectionType < FinchAPI::Enum
        abstract!

        PROVIDER = :provider
        FINCH = :finch

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
