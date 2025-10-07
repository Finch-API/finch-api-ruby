# typed: strong

module FinchAPI
  module Models
    class Introspection < FinchAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(FinchAPI::Introspection, FinchAPI::Internal::AnyHash)
        end

      # The Finch UUID of the token being introspected
      sig { returns(String) }
      attr_accessor :id

      # The client ID of the application associated with the `access_token`
      sig { returns(String) }
      attr_accessor :client_id

      # The type of application associated with a token.
      sig { returns(FinchAPI::Introspection::ClientType::TaggedSymbol) }
      attr_accessor :client_type

      # The Finch UUID of the connection associated with the `access_token`
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

      # An array of the authorized products associated with the `access_token`.
      sig { returns(T::Array[String]) }
      attr_accessor :products

      # The ID of the provider associated with the `access_token`.
      sig { returns(String) }
      attr_accessor :provider_id

      # [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
      # instead of this account ID
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      sig do
        returns(
          T.nilable(T::Array[FinchAPI::Introspection::AuthenticationMethod])
        )
      end
      attr_reader :authentication_methods

      sig do
        params(
          authentication_methods:
            T::Array[FinchAPI::Introspection::AuthenticationMethod::OrHash]
        ).void
      end
      attr_writer :authentication_methods

      # [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
      # instead of this company ID
      sig { returns(T.nilable(String)) }
      attr_reader :company_id

      sig { params(company_id: String).void }
      attr_writer :company_id

      # The email of your customer you provided to Finch when a connect session was
      # created for this connection
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_email

      # The ID of your customer you provided to Finch when a connect session was created
      # for this connection
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      # The name of your customer you provided to Finch when a connect session was
      # created for this connection
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_name

      # Whether the connection associated with the `access_token` uses the Assisted
      # Connect Flow. (`true` if using Assisted Connect, `false` if connection is
      # automated)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :manual

      sig { params(manual: T::Boolean).void }
      attr_writer :manual

      # [DEPRECATED] Use `provider_id` to identify the provider instead of this payroll
      # provider ID.
      sig { returns(T.nilable(String)) }
      attr_reader :payroll_provider_id

      sig { params(payroll_provider_id: String).void }
      attr_writer :payroll_provider_id

      # The account username used for login associated with the `access_token`.
      sig { returns(T.nilable(String)) }
      attr_accessor :username

      sig do
        params(
          id: String,
          client_id: String,
          client_type: FinchAPI::Introspection::ClientType::OrSymbol,
          connection_id: String,
          connection_status: FinchAPI::Introspection::ConnectionStatus::OrHash,
          connection_type: FinchAPI::Introspection::ConnectionType::OrSymbol,
          products: T::Array[String],
          provider_id: String,
          account_id: String,
          authentication_methods:
            T::Array[FinchAPI::Introspection::AuthenticationMethod::OrHash],
          company_id: String,
          customer_email: T.nilable(String),
          customer_id: T.nilable(String),
          customer_name: T.nilable(String),
          manual: T::Boolean,
          payroll_provider_id: String,
          username: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The Finch UUID of the token being introspected
        id:,
        # The client ID of the application associated with the `access_token`
        client_id:,
        # The type of application associated with a token.
        client_type:,
        # The Finch UUID of the connection associated with the `access_token`
        connection_id:,
        connection_status:,
        # The type of the connection associated with the token.
        #
        # - `provider` - connection to an external provider
        # - `finch` - finch-generated data.
        connection_type:,
        # An array of the authorized products associated with the `access_token`.
        products:,
        # The ID of the provider associated with the `access_token`.
        provider_id:,
        # [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
        # instead of this account ID
        account_id: nil,
        authentication_methods: nil,
        # [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
        # instead of this company ID
        company_id: nil,
        # The email of your customer you provided to Finch when a connect session was
        # created for this connection
        customer_email: nil,
        # The ID of your customer you provided to Finch when a connect session was created
        # for this connection
        customer_id: nil,
        # The name of your customer you provided to Finch when a connect session was
        # created for this connection
        customer_name: nil,
        # Whether the connection associated with the `access_token` uses the Assisted
        # Connect Flow. (`true` if using Assisted Connect, `false` if connection is
        # automated)
        manual: nil,
        # [DEPRECATED] Use `provider_id` to identify the provider instead of this payroll
        # provider ID.
        payroll_provider_id: nil,
        # The account username used for login associated with the `access_token`.
        username: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            client_id: String,
            client_type: FinchAPI::Introspection::ClientType::TaggedSymbol,
            connection_id: String,
            connection_status: FinchAPI::Introspection::ConnectionStatus,
            connection_type:
              FinchAPI::Introspection::ConnectionType::TaggedSymbol,
            products: T::Array[String],
            provider_id: String,
            account_id: String,
            authentication_methods:
              T::Array[FinchAPI::Introspection::AuthenticationMethod],
            company_id: String,
            customer_email: T.nilable(String),
            customer_id: T.nilable(String),
            customer_name: T.nilable(String),
            manual: T::Boolean,
            payroll_provider_id: String,
            username: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The type of application associated with a token.
      module ClientType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, FinchAPI::Introspection::ClientType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEVELOPMENT =
          T.let(:development, FinchAPI::Introspection::ClientType::TaggedSymbol)
        PRODUCTION =
          T.let(:production, FinchAPI::Introspection::ClientType::TaggedSymbol)
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

        sig { returns(FinchAPI::ConnectionStatusType::TaggedSymbol) }
        attr_accessor :status

        # The datetime when the connection was last successfully synced
        sig do
          returns(
            T.nilable(
              FinchAPI::Introspection::ConnectionStatus::LastSuccessfulSync::Variants
            )
          )
        end
        attr_accessor :last_successful_sync

        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig do
          params(
            status: FinchAPI::ConnectionStatusType::OrSymbol,
            last_successful_sync:
              T.nilable(
                FinchAPI::Introspection::ConnectionStatus::LastSuccessfulSync::Variants
              ),
            message: String
          ).returns(T.attached_class)
        end
        def self.new(
          status:,
          # The datetime when the connection was last successfully synced
          last_successful_sync: nil,
          message: nil
        )
        end

        sig do
          override.returns(
            {
              status: FinchAPI::ConnectionStatusType::TaggedSymbol,
              last_successful_sync:
                T.nilable(
                  FinchAPI::Introspection::ConnectionStatus::LastSuccessfulSync::Variants
                ),
              message: String
            }
          )
        end
        def to_hash
        end

        # The datetime when the connection was last successfully synced
        module LastSuccessfulSync
          extend FinchAPI::Internal::Type::Union

          Variants = T.type_alias { T.any(Time, String) }

          sig do
            override.returns(
              T::Array[
                FinchAPI::Introspection::ConnectionStatus::LastSuccessfulSync::Variants
              ]
            )
          end
          def self.variants
          end
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

        FINCH =
          T.let(:finch, FinchAPI::Introspection::ConnectionType::TaggedSymbol)
        PROVIDER =
          T.let(
            :provider,
            FinchAPI::Introspection::ConnectionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[FinchAPI::Introspection::ConnectionType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class AuthenticationMethod < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Introspection::AuthenticationMethod,
              FinchAPI::Internal::AnyHash
            )
          end

        # The type of authentication method
        sig do
          returns(
            FinchAPI::Introspection::AuthenticationMethod::Type::TaggedSymbol
          )
        end
        attr_accessor :type

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

        # An array of the authorized products associated with the `access_token`
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :products

        sig { params(products: T::Array[String]).void }
        attr_writer :products

        sig do
          params(
            type: FinchAPI::Introspection::AuthenticationMethod::Type::OrSymbol,
            connection_status:
              FinchAPI::Introspection::AuthenticationMethod::ConnectionStatus::OrHash,
            products: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of authentication method
          type:,
          connection_status: nil,
          # An array of the authorized products associated with the `access_token`
          products: nil
        )
        end

        sig do
          override.returns(
            {
              type:
                FinchAPI::Introspection::AuthenticationMethod::Type::TaggedSymbol,
              connection_status:
                FinchAPI::Introspection::AuthenticationMethod::ConnectionStatus,
              products: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # The type of authentication method
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

        class ConnectionStatus < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::Introspection::AuthenticationMethod::ConnectionStatus,
                FinchAPI::Internal::AnyHash
              )
            end

          sig { returns(FinchAPI::ConnectionStatusType::TaggedSymbol) }
          attr_accessor :status

          # The datetime when the connection was last successfully synced
          sig do
            returns(
              T.nilable(
                FinchAPI::Introspection::AuthenticationMethod::ConnectionStatus::LastSuccessfulSync::Variants
              )
            )
          end
          attr_accessor :last_successful_sync

          sig { returns(T.nilable(String)) }
          attr_reader :message

          sig { params(message: String).void }
          attr_writer :message

          sig do
            params(
              status: FinchAPI::ConnectionStatusType::OrSymbol,
              last_successful_sync:
                T.nilable(
                  FinchAPI::Introspection::AuthenticationMethod::ConnectionStatus::LastSuccessfulSync::Variants
                ),
              message: String
            ).returns(T.attached_class)
          end
          def self.new(
            status:,
            # The datetime when the connection was last successfully synced
            last_successful_sync: nil,
            message: nil
          )
          end

          sig do
            override.returns(
              {
                status: FinchAPI::ConnectionStatusType::TaggedSymbol,
                last_successful_sync:
                  T.nilable(
                    FinchAPI::Introspection::AuthenticationMethod::ConnectionStatus::LastSuccessfulSync::Variants
                  ),
                message: String
              }
            )
          end
          def to_hash
          end

          # The datetime when the connection was last successfully synced
          module LastSuccessfulSync
            extend FinchAPI::Internal::Type::Union

            Variants = T.type_alias { T.any(Time, String) }

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Introspection::AuthenticationMethod::ConnectionStatus::LastSuccessfulSync::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
