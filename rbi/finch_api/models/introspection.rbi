# typed: strong

module FinchAPI
  module Models
    class Introspection < FinchAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(FinchAPI::Introspection, FinchAPI::Internal::AnyHash)
        end

      # The Finch UUID of the token being introspected.
      sig { returns(String) }
      attr_accessor :id

      # [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
      # instead of this account ID.
      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(T::Array[FinchAPI::Introspection::AuthenticationMethod]) }
      attr_accessor :authentication_methods

      # The client ID of the application associated with the `access_token`.
      sig { returns(String) }
      attr_accessor :client_id

      # The type of application associated with a token.
      sig { returns(FinchAPI::Introspection::ClientType::TaggedSymbol) }
      attr_accessor :client_type

      # [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
      # instead of this company ID.
      sig { returns(String) }
      attr_accessor :company_id

      # The Finch UUID of the connection associated with the `access_token`.
      sig { returns(String) }
      attr_accessor :connection_id

      sig { returns(FinchAPI::Introspection::ConnectionStatus) }
      attr_reader :connection_status

      sig do
        params(
          connection_status: FinchAPI::Introspection::ConnectionStatus::OrHash
        ).void
      end
      attr_writer :connection_status

      # The type of the connection associated with the token.
      #
      # - `provider` - connection to an external provider
      # - `finch` - finch-generated data.
      sig { returns(FinchAPI::Introspection::ConnectionType::TaggedSymbol) }
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
          authentication_methods:
            T::Array[FinchAPI::Introspection::AuthenticationMethod::OrHash],
          client_id: String,
          client_type: FinchAPI::Introspection::ClientType::OrSymbol,
          company_id: String,
          connection_id: String,
          connection_status: FinchAPI::Introspection::ConnectionStatus::OrHash,
          connection_type: FinchAPI::Introspection::ConnectionType::OrSymbol,
          customer_email: T.nilable(String),
          customer_id: T.nilable(String),
          customer_name: T.nilable(String),
          manual: T::Boolean,
          payroll_provider_id: String,
          products: T::Array[String],
          provider_id: String,
          username: String
        ).returns(T.attached_class)
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
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            authentication_methods:
              T::Array[FinchAPI::Introspection::AuthenticationMethod],
            client_id: String,
            client_type: FinchAPI::Introspection::ClientType::TaggedSymbol,
            company_id: String,
            connection_id: String,
            connection_status: FinchAPI::Introspection::ConnectionStatus,
            connection_type:
              FinchAPI::Introspection::ConnectionType::TaggedSymbol,
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

      class AuthenticationMethod < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Introspection::AuthenticationMethod,
              FinchAPI::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              FinchAPI::Introspection::AuthenticationMethod::ConnectionStatus
            )
          )
        end
        attr_reader :connection_status

        sig do
          params(
            connection_status:
              FinchAPI::Introspection::AuthenticationMethod::ConnectionStatus::OrHash
          ).void
        end
        attr_writer :connection_status

        # An array of the authorized products associated with the `access_token`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :products

        sig { params(products: T::Array[String]).void }
        attr_writer :products

        # The type of authentication method.
        sig do
          returns(
            T.nilable(
              FinchAPI::Introspection::AuthenticationMethod::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: FinchAPI::Introspection::AuthenticationMethod::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            connection_status:
              FinchAPI::Introspection::AuthenticationMethod::ConnectionStatus::OrHash,
            products: T::Array[String],
            type: FinchAPI::Introspection::AuthenticationMethod::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          connection_status: nil,
          # An array of the authorized products associated with the `access_token`.
          products: nil,
          # The type of authentication method.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              connection_status:
                FinchAPI::Introspection::AuthenticationMethod::ConnectionStatus,
              products: T::Array[String],
              type:
                FinchAPI::Introspection::AuthenticationMethod::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class ConnectionStatus < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::Introspection::AuthenticationMethod::ConnectionStatus,
                FinchAPI::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :message

          sig { params(message: String).void }
          attr_writer :message

          sig do
            returns(T.nilable(FinchAPI::ConnectionStatusType::TaggedSymbol))
          end
          attr_reader :status

          sig { params(status: FinchAPI::ConnectionStatusType::OrSymbol).void }
          attr_writer :status

          sig do
            params(
              message: String,
              status: FinchAPI::ConnectionStatusType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(message: nil, status: nil)
          end

          sig do
            override.returns(
              {
                message: String,
                status: FinchAPI::ConnectionStatusType::TaggedSymbol
              }
            )
          end
          def to_hash
          end
        end

        # The type of authentication method.
        module Type
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, FinchAPI::Introspection::AuthenticationMethod::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASSISTED =
            T.let(
              :assisted,
              FinchAPI::Introspection::AuthenticationMethod::Type::TaggedSymbol
            )
          CREDENTIAL =
            T.let(
              :credential,
              FinchAPI::Introspection::AuthenticationMethod::Type::TaggedSymbol
            )
          API_TOKEN =
            T.let(
              :api_token,
              FinchAPI::Introspection::AuthenticationMethod::Type::TaggedSymbol
            )
          API_CREDENTIAL =
            T.let(
              :api_credential,
              FinchAPI::Introspection::AuthenticationMethod::Type::TaggedSymbol
            )
          OAUTH =
            T.let(
              :oauth,
              FinchAPI::Introspection::AuthenticationMethod::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::Introspection::AuthenticationMethod::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The type of application associated with a token.
      module ClientType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, FinchAPI::Introspection::ClientType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRODUCTION =
          T.let(:production, FinchAPI::Introspection::ClientType::TaggedSymbol)
        DEVELOPMENT =
          T.let(:development, FinchAPI::Introspection::ClientType::TaggedSymbol)
        SANDBOX =
          T.let(:sandbox, FinchAPI::Introspection::ClientType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[FinchAPI::Introspection::ClientType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class ConnectionStatus < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Introspection::ConnectionStatus,
              FinchAPI::Internal::AnyHash
            )
          end

        # The datetime when the connection was last successfully synced.
        sig { returns(T.nilable(Time)) }
        attr_reader :last_successful_sync

        sig { params(last_successful_sync: Time).void }
        attr_writer :last_successful_sync

        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig { returns(T.nilable(FinchAPI::ConnectionStatusType::TaggedSymbol)) }
        attr_reader :status

        sig { params(status: FinchAPI::ConnectionStatusType::OrSymbol).void }
        attr_writer :status

        sig do
          params(
            last_successful_sync: Time,
            message: String,
            status: FinchAPI::ConnectionStatusType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The datetime when the connection was last successfully synced.
          last_successful_sync: nil,
          message: nil,
          status: nil
        )
        end

        sig do
          override.returns(
            {
              last_successful_sync: Time,
              message: String,
              status: FinchAPI::ConnectionStatusType::TaggedSymbol
            }
          )
        end
        def to_hash
        end
      end

      # The type of the connection associated with the token.
      #
      # - `provider` - connection to an external provider
      # - `finch` - finch-generated data.
      module ConnectionType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, FinchAPI::Introspection::ConnectionType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROVIDER =
          T.let(
            :provider,
            FinchAPI::Introspection::ConnectionType::TaggedSymbol
          )
        FINCH =
          T.let(:finch, FinchAPI::Introspection::ConnectionType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[FinchAPI::Introspection::ConnectionType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
