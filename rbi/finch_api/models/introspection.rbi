# typed: strong

module FinchAPI
  module Models
    class Introspection < FinchAPI::Internal::Type::BaseModel
      # The Finch UUID of the token being introspected.
      sig { returns(String) }
      attr_accessor :id

      # [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
      # instead of this account ID.
      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(T::Array[FinchAPI::Models::Introspection::AuthenticationMethod]) }
      attr_accessor :authentication_methods

      # The client ID of the application associated with the `access_token`.
      sig { returns(String) }
      attr_accessor :client_id

      # The type of application associated with a token.
      sig { returns(FinchAPI::Models::Introspection::ClientType::TaggedSymbol) }
      attr_accessor :client_type

      # [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
      # instead of this company ID.
      sig { returns(String) }
      attr_accessor :company_id

      # The Finch UUID of the connection associated with the `access_token`.
      sig { returns(String) }
      attr_accessor :connection_id

      sig { returns(FinchAPI::Models::Introspection::ConnectionStatus) }
      attr_reader :connection_status

      sig do
        params(
          connection_status: T.any(FinchAPI::Models::Introspection::ConnectionStatus, FinchAPI::Internal::AnyHash)
        )
          .void
      end
      attr_writer :connection_status

      # The type of the connection associated with the token.
      #
      # - `provider` - connection to an external provider
      # - `finch` - finch-generated data.
      sig { returns(FinchAPI::Models::Introspection::ConnectionType::TaggedSymbol) }
      attr_accessor :connection_type

      # The email of your customer you provided to Finch when a connect session was
      # created for this connection.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_email

      # The ID of your customer you provided to Finch when a connect session was created
      # for this connection.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      # The name of your customer you provided to Finch when a connect session was
      # created for this connection.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_name

      # Whether the connection associated with the `access_token` uses the Assisted
      # Connect Flow. (`true` if using Assisted Connect, `false` if connection is
      # automated)
      sig { returns(T::Boolean) }
      attr_accessor :manual

      # [DEPRECATED] Use `provider_id` to identify the provider instead of this payroll
      # provider ID.
      sig { returns(String) }
      attr_accessor :payroll_provider_id

      # An array of the authorized products associated with the `access_token`.
      sig { returns(T::Array[String]) }
      attr_accessor :products

      # The ID of the provider associated with the `access_token`.
      sig { returns(String) }
      attr_accessor :provider_id

      # The account username used for login associated with the `access_token`.
      sig { returns(String) }
      attr_accessor :username

      sig do
        params(
          id: String,
          account_id: String,
          authentication_methods: T::Array[T.any(FinchAPI::Models::Introspection::AuthenticationMethod, FinchAPI::Internal::AnyHash)],
          client_id: String,
          client_type: FinchAPI::Models::Introspection::ClientType::OrSymbol,
          company_id: String,
          connection_id: String,
          connection_status: T.any(FinchAPI::Models::Introspection::ConnectionStatus, FinchAPI::Internal::AnyHash),
          connection_type: FinchAPI::Models::Introspection::ConnectionType::OrSymbol,
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
        # The Finch UUID of the token being introspected.
        id:,
        # [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
        # instead of this account ID.
        account_id:,
        authentication_methods:,
        # The client ID of the application associated with the `access_token`.
        client_id:,
        # The type of application associated with a token.
        client_type:,
        # [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
        # instead of this company ID.
        company_id:,
        # The Finch UUID of the connection associated with the `access_token`.
        connection_id:,
        connection_status:,
        # The type of the connection associated with the token.
        #
        # - `provider` - connection to an external provider
        # - `finch` - finch-generated data.
        connection_type:,
        # The email of your customer you provided to Finch when a connect session was
        # created for this connection.
        customer_email:,
        # The ID of your customer you provided to Finch when a connect session was created
        # for this connection.
        customer_id:,
        # The name of your customer you provided to Finch when a connect session was
        # created for this connection.
        customer_name:,
        # Whether the connection associated with the `access_token` uses the Assisted
        # Connect Flow. (`true` if using Assisted Connect, `false` if connection is
        # automated)
        manual:,
        # [DEPRECATED] Use `provider_id` to identify the provider instead of this payroll
        # provider ID.
        payroll_provider_id:,
        # An array of the authorized products associated with the `access_token`.
        products:,
        # The ID of the provider associated with the `access_token`.
        provider_id:,
        # The account username used for login associated with the `access_token`.
        username:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
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
      def to_hash; end

      class AuthenticationMethod < FinchAPI::Internal::Type::BaseModel
        sig { returns(T.nilable(FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus)) }
        attr_reader :connection_status

        sig do
          params(
            connection_status: T.any(
              FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus,
              FinchAPI::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :connection_status

        # An array of the authorized products associated with the `access_token`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :products

        sig { params(products: T::Array[String]).void }
        attr_writer :products

        # The type of authentication method.
        sig { returns(T.nilable(FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol)) }
        attr_reader :type

        sig { params(type: FinchAPI::Models::Introspection::AuthenticationMethod::Type::OrSymbol).void }
        attr_writer :type

        sig do
          params(
            connection_status: T.any(
              FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus,
              FinchAPI::Internal::AnyHash
            ),
            products: T::Array[String],
            type: FinchAPI::Models::Introspection::AuthenticationMethod::Type::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(
          connection_status: nil,
          # An array of the authorized products associated with the `access_token`.
          products: nil,
          # The type of authentication method.
          type: nil
        ); end
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
        def to_hash; end

        class ConnectionStatus < FinchAPI::Internal::Type::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :message

          sig { params(message: String).void }
          attr_writer :message

          sig { returns(T.nilable(FinchAPI::Models::ConnectionStatusType::TaggedSymbol)) }
          attr_reader :status

          sig { params(status: FinchAPI::Models::ConnectionStatusType::OrSymbol).void }
          attr_writer :status

          sig do
            params(message: String, status: FinchAPI::Models::ConnectionStatusType::OrSymbol).returns(T.attached_class)
          end
          def self.new(message: nil, status: nil); end

          sig { override.returns({message: String, status: FinchAPI::Models::ConnectionStatusType::TaggedSymbol}) }
          def to_hash; end
        end

        # The type of authentication method.
        module Type
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::Models::Introspection::AuthenticationMethod::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASSISTED = T.let(:assisted, FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol)
          CREDENTIAL =
            T.let(:credential, FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol)
          API_TOKEN = T.let(:api_token, FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol)
          API_CREDENTIAL =
            T.let(:api_credential, FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol)
          OAUTH = T.let(:oauth, FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::Introspection::AuthenticationMethod::Type::TaggedSymbol]) }
          def self.values; end
        end
      end

      # The type of application associated with a token.
      module ClientType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Introspection::ClientType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRODUCTION = T.let(:production, FinchAPI::Models::Introspection::ClientType::TaggedSymbol)
        DEVELOPMENT = T.let(:development, FinchAPI::Models::Introspection::ClientType::TaggedSymbol)
        SANDBOX = T.let(:sandbox, FinchAPI::Models::Introspection::ClientType::TaggedSymbol)

        sig { override.returns(T::Array[FinchAPI::Models::Introspection::ClientType::TaggedSymbol]) }
        def self.values; end
      end

      class ConnectionStatus < FinchAPI::Internal::Type::BaseModel
        # The datetime when the connection was last successfully synced.
        sig { returns(T.nilable(Time)) }
        attr_reader :last_successful_sync

        sig { params(last_successful_sync: Time).void }
        attr_writer :last_successful_sync

        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig { returns(T.nilable(FinchAPI::Models::ConnectionStatusType::TaggedSymbol)) }
        attr_reader :status

        sig { params(status: FinchAPI::Models::ConnectionStatusType::OrSymbol).void }
        attr_writer :status

        sig do
          params(
            last_successful_sync: Time,
            message: String,
            status: FinchAPI::Models::ConnectionStatusType::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The datetime when the connection was last successfully synced.
          last_successful_sync: nil,
          message: nil,
          status: nil
        ); end
        sig do
          override
            .returns(
              {last_successful_sync: Time, message: String, status: FinchAPI::Models::ConnectionStatusType::TaggedSymbol}
            )
        end
        def to_hash; end
      end

      # The type of the connection associated with the token.
      #
      # - `provider` - connection to an external provider
      # - `finch` - finch-generated data.
      module ConnectionType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Introspection::ConnectionType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROVIDER = T.let(:provider, FinchAPI::Models::Introspection::ConnectionType::TaggedSymbol)
        FINCH = T.let(:finch, FinchAPI::Models::Introspection::ConnectionType::TaggedSymbol)

        sig { override.returns(T::Array[FinchAPI::Models::Introspection::ConnectionType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
