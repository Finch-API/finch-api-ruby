# frozen_string_literal: true

module FinchAPI
  module Models
    # @see FinchAPI::Resources::Account#introspect
    class Introspection < FinchAPI::Internal::Type::BaseModel
      # @!attribute id
      #   The Finch UUID of the token being introspected.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   @deprecated
      #
      #   [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
      #   instead of this account ID.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute authentication_methods
      #
      #   @return [Array<FinchAPI::Models::Introspection::AuthenticationMethod>]
      required :authentication_methods,
               -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Introspection::AuthenticationMethod] }

      # @!attribute client_id
      #   The client ID of the application associated with the `access_token`.
      #
      #   @return [String]
      required :client_id, String

      # @!attribute client_type
      #   The type of application associated with a token.
      #
      #   @return [Symbol, FinchAPI::Models::Introspection::ClientType]
      required :client_type, enum: -> { FinchAPI::Models::Introspection::ClientType }

      # @!attribute company_id
      #   @deprecated
      #
      #   [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
      #   instead of this company ID.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute connection_id
      #   The Finch UUID of the connection associated with the `access_token`.
      #
      #   @return [String]
      required :connection_id, String

      # @!attribute connection_status
      #
      #   @return [FinchAPI::Models::Introspection::ConnectionStatus]
      required :connection_status, -> { FinchAPI::Models::Introspection::ConnectionStatus }

      # @!attribute connection_type
      #   The type of the connection associated with the token.
      #
      #   - `provider` - connection to an external provider
      #   - `finch` - finch-generated data.
      #
      #   @return [Symbol, FinchAPI::Models::Introspection::ConnectionType]
      required :connection_type, enum: -> { FinchAPI::Models::Introspection::ConnectionType }

      # @!attribute customer_email
      #   The email of your customer you provided to Finch when a connect session was
      #   created for this connection.
      #
      #   @return [String, nil]
      required :customer_email, String, nil?: true

      # @!attribute customer_id
      #   The ID of your customer you provided to Finch when a connect session was created
      #   for this connection.
      #
      #   @return [String, nil]
      required :customer_id, String, nil?: true

      # @!attribute customer_name
      #   The name of your customer you provided to Finch when a connect session was
      #   created for this connection.
      #
      #   @return [String, nil]
      required :customer_name, String, nil?: true

      # @!attribute manual
      #   Whether the connection associated with the `access_token` uses the Assisted
      #   Connect Flow. (`true` if using Assisted Connect, `false` if connection is
      #   automated)
      #
      #   @return [Boolean]
      required :manual, FinchAPI::Internal::Type::Boolean

      # @!attribute payroll_provider_id
      #   @deprecated
      #
      #   [DEPRECATED] Use `provider_id` to identify the provider instead of this payroll
      #   provider ID.
      #
      #   @return [String]
      required :payroll_provider_id, String

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

      # @!attribute username
      #   The account username used for login associated with the `access_token`.
      #
      #   @return [String]
      required :username, String

      # @!method initialize(id:, account_id:, authentication_methods:, client_id:, client_type:, company_id:, connection_id:, connection_status:, connection_type:, customer_email:, customer_id:, customer_name:, manual:, payroll_provider_id:, products:, provider_id:, username:)
      #   Some parameter documentations has been truncated, see
      #   {FinchAPI::Models::Introspection} for more details.
      #
      #   @param id [String] The Finch UUID of the token being introspected.
      #
      #   @param account_id [String] [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection ins
      #   ...
      #
      #   @param authentication_methods [Array<FinchAPI::Models::Introspection::AuthenticationMethod>]
      #
      #   @param client_id [String] The client ID of the application associated with the `access_token`.
      #
      #   @param client_type [Symbol, FinchAPI::Models::Introspection::ClientType] The type of application associated with a token.
      #
      #   @param company_id [String] [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection ins
      #   ...
      #
      #   @param connection_id [String] The Finch UUID of the connection associated with the `access_token`.
      #
      #   @param connection_status [FinchAPI::Models::Introspection::ConnectionStatus]
      #
      #   @param connection_type [Symbol, FinchAPI::Models::Introspection::ConnectionType] The type of the connection associated with the token. ...
      #
      #   @param customer_email [String, nil] The email of your customer you provided to Finch when a connect session was crea
      #   ...
      #
      #   @param customer_id [String, nil] The ID of your customer you provided to Finch when a connect session was created
      #   ...
      #
      #   @param customer_name [String, nil] The name of your customer you provided to Finch when a connect session was creat
      #   ...
      #
      #   @param manual [Boolean] Whether the connection associated with the `access_token` uses the Assisted Conn
      #   ...
      #
      #   @param payroll_provider_id [String] [DEPRECATED] Use `provider_id` to identify the provider instead of this payroll
      #   ...
      #
      #   @param products [Array<String>] An array of the authorized products associated with the `access_token`.
      #
      #   @param provider_id [String] The ID of the provider associated with the `access_token`.
      #
      #   @param username [String] The account username used for login associated with the `access_token`.

      class AuthenticationMethod < FinchAPI::Internal::Type::BaseModel
        # @!attribute connection_status
        #
        #   @return [FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus, nil]
        optional :connection_status,
                 -> { FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus }

        # @!attribute products
        #   An array of the authorized products associated with the `access_token`.
        #
        #   @return [Array<String>, nil]
        optional :products, FinchAPI::Internal::Type::ArrayOf[String]

        # @!attribute type
        #   The type of authentication method.
        #
        #   @return [Symbol, FinchAPI::Models::Introspection::AuthenticationMethod::Type, nil]
        optional :type, enum: -> { FinchAPI::Models::Introspection::AuthenticationMethod::Type }

        # @!method initialize(connection_status: nil, products: nil, type: nil)
        #   @param connection_status [FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus]
        #
        #   @param products [Array<String>] An array of the authorized products associated with the `access_token`.
        #
        #   @param type [Symbol, FinchAPI::Models::Introspection::AuthenticationMethod::Type] The type of authentication method.

        # @see FinchAPI::Models::Introspection::AuthenticationMethod#connection_status
        class ConnectionStatus < FinchAPI::Internal::Type::BaseModel
          # @!attribute message
          #
          #   @return [String, nil]
          optional :message, String

          # @!attribute status
          #
          #   @return [Symbol, FinchAPI::Models::ConnectionStatusType, nil]
          optional :status, enum: -> { FinchAPI::Models::ConnectionStatusType }

          # @!method initialize(message: nil, status: nil)
          #   @param message [String]
          #   @param status [Symbol, FinchAPI::Models::ConnectionStatusType]
        end

        # The type of authentication method.
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
      end

      # The type of application associated with a token.
      #
      # @see FinchAPI::Models::Introspection#client_type
      module ClientType
        extend FinchAPI::Internal::Type::Enum

        PRODUCTION = :production
        DEVELOPMENT = :development
        SANDBOX = :sandbox

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see FinchAPI::Models::Introspection#connection_status
      class ConnectionStatus < FinchAPI::Internal::Type::BaseModel
        # @!attribute last_successful_sync
        #   The datetime when the connection was last successfully synced.
        #
        #   @return [Time, nil]
        optional :last_successful_sync, Time

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute status
        #
        #   @return [Symbol, FinchAPI::Models::ConnectionStatusType, nil]
        optional :status, enum: -> { FinchAPI::Models::ConnectionStatusType }

        # @!method initialize(last_successful_sync: nil, message: nil, status: nil)
        #   @param last_successful_sync [Time] The datetime when the connection was last successfully synced.
        #
        #   @param message [String]
        #
        #   @param status [Symbol, FinchAPI::Models::ConnectionStatusType]
      end

      # The type of the connection associated with the token.
      #
      # - `provider` - connection to an external provider
      # - `finch` - finch-generated data.
      #
      # @see FinchAPI::Models::Introspection#connection_type
      module ConnectionType
        extend FinchAPI::Internal::Type::Enum

        PROVIDER = :provider
        FINCH = :finch

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
