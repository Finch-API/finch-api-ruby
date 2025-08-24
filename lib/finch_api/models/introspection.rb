# frozen_string_literal: true

module FinchAPI
  module Models
    # @see FinchAPI::Resources::Account#introspect
    class Introspection < FinchAPI::Internal::Type::BaseModel
      # @!attribute id
      #   The Finch UUID of the token being introspected
      #
      #   @return [String]
      required :id, String

      # @!attribute client_id
      #   The client ID of the application associated with the `access_token`
      #
      #   @return [String]
      required :client_id, String

      # @!attribute client_type
      #   The type of application associated with a token.
      #
      #   @return [Symbol, FinchAPI::Models::Introspection::ClientType]
      required :client_type, enum: -> { FinchAPI::Introspection::ClientType }

      # @!attribute connection_id
      #   The Finch UUID of the connection associated with the `access_token`
      #
      #   @return [String]
      required :connection_id, String

      # @!attribute connection_status
      #
      #   @return [FinchAPI::Models::Introspection::ConnectionStatus]
      required :connection_status, -> { FinchAPI::Introspection::ConnectionStatus }

      # @!attribute connection_type
      #   The type of the connection associated with the token.
      #
      #   - `provider` - connection to an external provider
      #   - `finch` - finch-generated data.
      #
      #   @return [Symbol, FinchAPI::Models::Introspection::ConnectionType]
      required :connection_type, enum: -> { FinchAPI::Introspection::ConnectionType }

      # @!attribute products
      #   An array of the authorized products associated with the `access_token`.
      #
      #   @return [Array<String>]
      required :products, FinchAPI::Internal::Type::ArrayOf[String]

      # @!attribute provider_id
      #   The ID of the provider associated with the `access_token`.
      #
      #   @return [String]
      required :provider_id, String

      # @!attribute account_id
      #   @deprecated
      #
      #   [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
      #   instead of this account ID
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute authentication_methods
      #
      #   @return [Array<FinchAPI::Models::Introspection::AuthenticationMethod>, nil]
      optional :authentication_methods,
               -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Introspection::AuthenticationMethod] }

      # @!attribute company_id
      #   @deprecated
      #
      #   [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
      #   instead of this company ID
      #
      #   @return [String, nil]
      optional :company_id, String

      # @!attribute customer_email
      #   The email of your customer you provided to Finch when a connect session was
      #   created for this connection
      #
      #   @return [String, nil]
      optional :customer_email, String, nil?: true

      # @!attribute customer_id
      #   The ID of your customer you provided to Finch when a connect session was created
      #   for this connection
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

      # @!attribute customer_name
      #   The name of your customer you provided to Finch when a connect session was
      #   created for this connection
      #
      #   @return [String, nil]
      optional :customer_name, String, nil?: true

      # @!attribute entity_ids
      #   Array of entity IDs associated with this connection.
      #
      #   @return [Array<String>, nil]
      optional :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

      # @!attribute entity_mode
      #   Indicates whether this connection manages a single entity or multiple entities.
      #
      #   @return [Symbol, FinchAPI::Models::Introspection::EntityMode, nil]
      optional :entity_mode, enum: -> { FinchAPI::Introspection::EntityMode }

      # @!attribute manual
      #   Whether the connection associated with the `access_token` uses the Assisted
      #   Connect Flow. (`true` if using Assisted Connect, `false` if connection is
      #   automated)
      #
      #   @return [Boolean, nil]
      optional :manual, FinchAPI::Internal::Type::Boolean

      # @!attribute payroll_provider_id
      #   @deprecated
      #
      #   [DEPRECATED] Use `provider_id` to identify the provider instead of this payroll
      #   provider ID.
      #
      #   @return [String, nil]
      optional :payroll_provider_id, String

      # @!attribute username
      #   The account username used for login associated with the `access_token`.
      #
      #   @return [String, nil]
      optional :username, String, nil?: true

      # @!method initialize(id:, client_id:, client_type:, connection_id:, connection_status:, connection_type:, products:, provider_id:, account_id: nil, authentication_methods: nil, company_id: nil, customer_email: nil, customer_id: nil, customer_name: nil, entity_ids: nil, entity_mode: nil, manual: nil, payroll_provider_id: nil, username: nil)
      #   Some parameter documentations has been truncated, see
      #   {FinchAPI::Models::Introspection} for more details.
      #
      #   @param id [String] The Finch UUID of the token being introspected
      #
      #   @param client_id [String] The client ID of the application associated with the `access_token`
      #
      #   @param client_type [Symbol, FinchAPI::Models::Introspection::ClientType] The type of application associated with a token.
      #
      #   @param connection_id [String] The Finch UUID of the connection associated with the `access_token`
      #
      #   @param connection_status [FinchAPI::Models::Introspection::ConnectionStatus]
      #
      #   @param connection_type [Symbol, FinchAPI::Models::Introspection::ConnectionType] The type of the connection associated with the token.
      #
      #   @param products [Array<String>] An array of the authorized products associated with the `access_token`.
      #
      #   @param provider_id [String] The ID of the provider associated with the `access_token`.
      #
      #   @param account_id [String] [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection ins
      #
      #   @param authentication_methods [Array<FinchAPI::Models::Introspection::AuthenticationMethod>]
      #
      #   @param company_id [String] [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection ins
      #
      #   @param customer_email [String, nil] The email of your customer you provided to Finch when a connect session was crea
      #
      #   @param customer_id [String, nil] The ID of your customer you provided to Finch when a connect session was created
      #
      #   @param customer_name [String, nil] The name of your customer you provided to Finch when a connect session was creat
      #
      #   @param entity_ids [Array<String>] Array of entity IDs associated with this connection.
      #
      #   @param entity_mode [Symbol, FinchAPI::Models::Introspection::EntityMode] Indicates whether this connection manages a single entity or multiple entities.
      #
      #   @param manual [Boolean] Whether the connection associated with the `access_token` uses the Assisted Conn
      #
      #   @param payroll_provider_id [String] [DEPRECATED] Use `provider_id` to identify the provider instead of this payroll
      #
      #   @param username [String, nil] The account username used for login associated with the `access_token`.

      # The type of application associated with a token.
      #
      # @see FinchAPI::Models::Introspection#client_type
      module ClientType
        extend FinchAPI::Internal::Type::Enum

        DEVELOPMENT = :development
        PRODUCTION = :production
        SANDBOX = :sandbox

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see FinchAPI::Models::Introspection#connection_status
      class ConnectionStatus < FinchAPI::Internal::Type::BaseModel
        # @!attribute status
        #
        #   @return [Symbol, FinchAPI::Models::ConnectionStatusType]
        required :status, enum: -> { FinchAPI::ConnectionStatusType }

        # @!attribute last_successful_sync
        #   The datetime when the connection was last successfully synced
        #
        #   @return [Time, String, nil]
        optional :last_successful_sync,
                 union: -> { FinchAPI::Introspection::ConnectionStatus::LastSuccessfulSync },
                 nil?: true

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!method initialize(status:, last_successful_sync: nil, message: nil)
        #   @param status [Symbol, FinchAPI::Models::ConnectionStatusType]
        #
        #   @param last_successful_sync [Time, String, nil] The datetime when the connection was last successfully synced
        #
        #   @param message [String]

        # The datetime when the connection was last successfully synced
        #
        # @see FinchAPI::Models::Introspection::ConnectionStatus#last_successful_sync
        module LastSuccessfulSync
          extend FinchAPI::Internal::Type::Union

          variant Time

          variant String

          # @!method self.variants
          #   @return [Array(Time, String)]
        end
      end

      # The type of the connection associated with the token.
      #
      # - `provider` - connection to an external provider
      # - `finch` - finch-generated data.
      #
      # @see FinchAPI::Models::Introspection#connection_type
      module ConnectionType
        extend FinchAPI::Internal::Type::Enum

        FINCH = :finch
        PROVIDER = :provider

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class AuthenticationMethod < FinchAPI::Internal::Type::BaseModel
        # @!attribute type
        #   The type of authentication method
        #
        #   @return [Symbol, FinchAPI::Models::Introspection::AuthenticationMethod::Type]
        required :type, enum: -> { FinchAPI::Introspection::AuthenticationMethod::Type }

        # @!attribute connection_status
        #
        #   @return [FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus, nil]
        optional :connection_status, -> { FinchAPI::Introspection::AuthenticationMethod::ConnectionStatus }

        # @!attribute products
        #   An array of the authorized products associated with the `access_token`
        #
        #   @return [Array<String>, nil]
        optional :products, FinchAPI::Internal::Type::ArrayOf[String]

        # @!method initialize(type:, connection_status: nil, products: nil)
        #   @param type [Symbol, FinchAPI::Models::Introspection::AuthenticationMethod::Type] The type of authentication method
        #
        #   @param connection_status [FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus]
        #
        #   @param products [Array<String>] An array of the authorized products associated with the `access_token`

        # The type of authentication method
        #
        # @see FinchAPI::Models::Introspection::AuthenticationMethod#type
        module Type
          extend FinchAPI::Internal::Type::Enum

          ASSISTED = :assisted
          CREDENTIAL = :credential
          API_TOKEN = :api_token
          API_CREDENTIAL = :api_credential
          OAUTH = :oauth

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see FinchAPI::Models::Introspection::AuthenticationMethod#connection_status
        class ConnectionStatus < FinchAPI::Internal::Type::BaseModel
          # @!attribute status
          #
          #   @return [Symbol, FinchAPI::Models::ConnectionStatusType]
          required :status, enum: -> { FinchAPI::ConnectionStatusType }

          # @!attribute last_successful_sync
          #   The datetime when the connection was last successfully synced
          #
          #   @return [Time, String, nil]
          optional :last_successful_sync,
                   union: -> {
                     FinchAPI::Introspection::AuthenticationMethod::ConnectionStatus::LastSuccessfulSync
                   },
                   nil?: true

          # @!attribute message
          #
          #   @return [String, nil]
          optional :message, String

          # @!method initialize(status:, last_successful_sync: nil, message: nil)
          #   @param status [Symbol, FinchAPI::Models::ConnectionStatusType]
          #
          #   @param last_successful_sync [Time, String, nil] The datetime when the connection was last successfully synced
          #
          #   @param message [String]

          # The datetime when the connection was last successfully synced
          #
          # @see FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus#last_successful_sync
          module LastSuccessfulSync
            extend FinchAPI::Internal::Type::Union

            variant Time

            variant String

            # @!method self.variants
            #   @return [Array(Time, String)]
          end
        end
      end

      # Indicates whether this connection manages a single entity or multiple entities.
      #
      # @see FinchAPI::Models::Introspection#entity_mode
      module EntityMode
        extend FinchAPI::Internal::Type::Enum

        SINGLE = :single
        MULTI = :multi

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
