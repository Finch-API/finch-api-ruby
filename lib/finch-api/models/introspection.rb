# frozen_string_literal: true

module FinchAPI
  module Models
    class Introspection < FinchAPI::BaseModel
      # @!attribute account_id
      #   [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
      #     instead of this account ID.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute authentication_methods
      #
      #   @return [Array<FinchAPI::Models::Introspection::AuthenticationMethod>]
      required :authentication_methods,
               -> { FinchAPI::ArrayOf[FinchAPI::Models::Introspection::AuthenticationMethod] }

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
      #   [DEPRECATED] Use `connection_id` to associate tokens with a Finch connection
      #     instead of this company ID.
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
      #     - `provider` - connection to an external provider
      #     - `finch` - finch-generated data.
      #
      #   @return [Symbol, FinchAPI::Models::Introspection::ConnectionType]
      required :connection_type, enum: -> { FinchAPI::Models::Introspection::ConnectionType }

      # @!attribute customer_email
      #   The email of your customer you provided to Finch when a connect session was
      #     created for this connection.
      #
      #   @return [String, nil]
      required :customer_email, String, nil?: true

      # @!attribute customer_id
      #   The ID of your customer you provided to Finch when a connect session was created
      #     for this connection.
      #
      #   @return [String, nil]
      required :customer_id, String, nil?: true

      # @!attribute customer_name
      #   The name of your customer you provided to Finch when a connect session was
      #     created for this connection.
      #
      #   @return [String, nil]
      required :customer_name, String, nil?: true

      # @!attribute manual
      #   Whether the connection associated with the `access_token` uses the Assisted
      #     Connect Flow. (`true` if using Assisted Connect, `false` if connection is
      #     automated)
      #
      #   @return [Boolean]
      required :manual, FinchAPI::BooleanModel

      # @!attribute payroll_provider_id
      #   [DEPRECATED] Use `provider_id` to identify the provider instead of this payroll
      #     provider ID.
      #
      #   @return [String]
      required :payroll_provider_id, String

      # @!attribute products
      #   An array of the authorized products associated with the `access_token`.
      #
      #   @return [Array<String>]
      required :products, FinchAPI::ArrayOf[String]

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

      # @!parse
      #   # @param account_id [String]
      #   # @param authentication_methods [Array<FinchAPI::Models::Introspection::AuthenticationMethod>]
      #   # @param client_id [String]
      #   # @param client_type [Symbol, FinchAPI::Models::Introspection::ClientType]
      #   # @param company_id [String]
      #   # @param connection_id [String]
      #   # @param connection_status [FinchAPI::Models::Introspection::ConnectionStatus]
      #   # @param connection_type [Symbol, FinchAPI::Models::Introspection::ConnectionType]
      #   # @param customer_email [String, nil]
      #   # @param customer_id [String, nil]
      #   # @param customer_name [String, nil]
      #   # @param manual [Boolean]
      #   # @param payroll_provider_id [String]
      #   # @param products [Array<String>]
      #   # @param provider_id [String]
      #   # @param username [String]
      #   #
      #   def initialize(
      #     account_id:,
      #     authentication_methods:,
      #     client_id:,
      #     client_type:,
      #     company_id:,
      #     connection_id:,
      #     connection_status:,
      #     connection_type:,
      #     customer_email:,
      #     customer_id:,
      #     customer_name:,
      #     manual:,
      #     payroll_provider_id:,
      #     products:,
      #     provider_id:,
      #     username:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | FinchAPI::BaseModel) -> void

      class AuthenticationMethod < FinchAPI::BaseModel
        # @!attribute [r] connection_status
        #
        #   @return [FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus, nil]
        optional :connection_status,
                 -> { FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus }

        # @!parse
        #   # @return [FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus]
        #   attr_writer :connection_status

        # @!attribute [r] products
        #   An array of the authorized products associated with the `access_token`.
        #
        #   @return [Array<String>, nil]
        optional :products, FinchAPI::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :products

        # @!attribute [r] type
        #   The type of authentication method.
        #
        #   @return [Symbol, FinchAPI::Models::Introspection::AuthenticationMethod::Type, nil]
        optional :type, enum: -> { FinchAPI::Models::Introspection::AuthenticationMethod::Type }

        # @!parse
        #   # @return [Symbol, FinchAPI::Models::Introspection::AuthenticationMethod::Type]
        #   attr_writer :type

        # @!parse
        #   # @param connection_status [FinchAPI::Models::Introspection::AuthenticationMethod::ConnectionStatus]
        #   # @param products [Array<String>]
        #   # @param type [Symbol, FinchAPI::Models::Introspection::AuthenticationMethod::Type]
        #   #
        #   def initialize(connection_status: nil, products: nil, type: nil, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        class ConnectionStatus < FinchAPI::BaseModel
          # @!attribute [r] message
          #
          #   @return [String, nil]
          optional :message, String

          # @!parse
          #   # @return [String]
          #   attr_writer :message

          # @!attribute [r] status
          #
          #   @return [Symbol, FinchAPI::Models::ConnectionStatusType, nil]
          optional :status, enum: -> { FinchAPI::Models::ConnectionStatusType }

          # @!parse
          #   # @return [Symbol, FinchAPI::Models::ConnectionStatusType]
          #   attr_writer :status

          # @!parse
          #   # @param message [String]
          #   # @param status [Symbol, FinchAPI::Models::ConnectionStatusType]
          #   #
          #   def initialize(message: nil, status: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void
        end

        # The type of authentication method.
        module Type
          extend FinchAPI::Enum

          ASSISTED = :assisted
          CREDENTIAL = :credential
          API_TOKEN = :api_token
          API_CREDENTIAL = :api_credential
          OAUTH = :oauth

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # The type of application associated with a token.
      module ClientType
        extend FinchAPI::Enum

        PRODUCTION = :production
        DEVELOPMENT = :development
        SANDBOX = :sandbox

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      class ConnectionStatus < FinchAPI::BaseModel
        # @!attribute [r] message
        #
        #   @return [String, nil]
        optional :message, String

        # @!parse
        #   # @return [String]
        #   attr_writer :message

        # @!attribute [r] status
        #
        #   @return [Symbol, FinchAPI::Models::ConnectionStatusType, nil]
        optional :status, enum: -> { FinchAPI::Models::ConnectionStatusType }

        # @!parse
        #   # @return [Symbol, FinchAPI::Models::ConnectionStatusType]
        #   attr_writer :status

        # @!parse
        #   # @param message [String]
        #   # @param status [Symbol, FinchAPI::Models::ConnectionStatusType]
        #   #
        #   def initialize(message: nil, status: nil, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void
      end

      # The type of the connection associated with the token.
      #
      #   - `provider` - connection to an external provider
      #   - `finch` - finch-generated data.
      module ConnectionType
        extend FinchAPI::Enum

        PROVIDER = :provider
        FINCH = :finch

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
