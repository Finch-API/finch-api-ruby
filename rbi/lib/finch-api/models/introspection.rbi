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
      sig { returns(FinchAPI::Models::Introspection::ClientType::TaggedSymbol) }
      def client_type
      end

      sig do
        params(_: FinchAPI::Models::Introspection::ClientType::TaggedSymbol)
          .returns(FinchAPI::Models::Introspection::ClientType::TaggedSymbol)
      end
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
        params(_: T.any(FinchAPI::Models::Introspection::ConnectionStatus, FinchAPI::Util::AnyHash))
          .returns(T.any(FinchAPI::Models::Introspection::ConnectionStatus, FinchAPI::Util::AnyHash))
      end
      def connection_status=(_)
      end

      # The type of the connection associated with the token.
      #
      #   - `provider` - connection to an external provider
      #   - `finch` - finch-generated data.
      sig { returns(FinchAPI::Models::Introspection::ConnectionType::TaggedSymbol) }
      def connection_type
      end

      sig do
        params(_: FinchAPI::Models::Introspection::ConnectionType::TaggedSymbol)
          .returns(FinchAPI::Models::Introspection::ConnectionType::TaggedSymbol)
      end
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
          client_type: FinchAPI::Models::Introspection::ClientType::TaggedSymbol,
          company_id: String,
          connection_id: String,
          connection_status: FinchAPI::Models::Introspection::ConnectionStatus,
          connection_type: FinchAPI::Models::Introspection::ConnectionType::TaggedSymbol,
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
              client_type: FinchAPI::Models::Introspection::ClientType::TaggedSymbol,
              company_id: String,
              connection_id: String,
              connection_status: FinchAPI::Models::Introspection::ConnectionStatus,
              connection_type: FinchAPI::Models::Introspection::ConnectionType::TaggedSymbol,
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
          params(
            _: T.any(FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus, FinchAPI::Util::AnyHash)
          )
            .returns(
              T.any(FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus, FinchAPI::Util::AnyHash)
            )
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
        sig { returns(T.nilable(FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol)) }
        def type
        end

        sig do
          params(_: FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol)
            .returns(FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol)
        end
        def type=(_)
        end

        sig do
          params(
            connection_status: FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus,
            products: T::Array[String],
            type: FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol
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
                type: FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol
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

          sig { returns(T.nilable(FinchAPI::Models::ConnectionStatusType::TaggedSymbol)) }
          def status
          end

          sig do
            params(_: FinchAPI::Models::ConnectionStatusType::TaggedSymbol)
              .returns(FinchAPI::Models::ConnectionStatusType::TaggedSymbol)
          end
          def status=(_)
          end

          sig do
            params(message: String, status: FinchAPI::Models::ConnectionStatusType::TaggedSymbol)
              .returns(T.attached_class)
          end
          def self.new(message: nil, status: nil)
          end

          sig { override.returns({message: String, status: FinchAPI::Models::ConnectionStatusType::TaggedSymbol}) }
          def to_hash
          end
        end

        # The type of authentication method.
        module Type
          extend FinchAPI::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::Models::Introspection::AuthenticationMethod::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol) }

          ASSISTED = T.let(:assisted, FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol)
          CREDENTIAL =
            T.let(:credential, FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol)
          API_TOKEN = T.let(:api_token, FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol)
          API_CREDENTIAL =
            T.let(:api_credential, FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol)
          OAUTH = T.let(:oauth, FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end

      # The type of application associated with a token.
      module ClientType
        extend FinchAPI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Introspection::ClientType) }
        OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::Introspection::ClientType::TaggedSymbol) }

        PRODUCTION = T.let(:production, FinchAPI::Models::Introspection::ClientType::TaggedSymbol)
        DEVELOPMENT = T.let(:development, FinchAPI::Models::Introspection::ClientType::TaggedSymbol)
        SANDBOX = T.let(:sandbox, FinchAPI::Models::Introspection::ClientType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[FinchAPI::Models::Introspection::ClientType::TaggedSymbol]) }
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

        sig { returns(T.nilable(FinchAPI::Models::ConnectionStatusType::TaggedSymbol)) }
        def status
        end

        sig do
          params(_: FinchAPI::Models::ConnectionStatusType::TaggedSymbol)
            .returns(FinchAPI::Models::ConnectionStatusType::TaggedSymbol)
        end
        def status=(_)
        end

        sig do
          params(message: String, status: FinchAPI::Models::ConnectionStatusType::TaggedSymbol)
            .returns(T.attached_class)
        end
        def self.new(message: nil, status: nil)
        end

        sig { override.returns({message: String, status: FinchAPI::Models::ConnectionStatusType::TaggedSymbol}) }
        def to_hash
        end
      end

      # The type of the connection associated with the token.
      #
      #   - `provider` - connection to an external provider
      #   - `finch` - finch-generated data.
      module ConnectionType
        extend FinchAPI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Introspection::ConnectionType) }
        OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::Introspection::ConnectionType::TaggedSymbol) }

        PROVIDER = T.let(:provider, FinchAPI::Models::Introspection::ConnectionType::TaggedSymbol)
        FINCH = T.let(:finch, FinchAPI::Models::Introspection::ConnectionType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[FinchAPI::Models::Introspection::ConnectionType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
