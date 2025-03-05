# frozen_string_literal: true

module FinchAPI
  module Models
    class CreateAccessTokenResponse < FinchAPI::BaseModel
      # @!attribute access_token
      #   The access token for the connection.
      #
      #   @return [String]
      required :access_token, String

      # @!attribute account_id
      #   [DEPRECATED] Use `connection_id` to identify the connection instead of this
      #     account ID.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute client_type
      #   The type of application associated with a token.
      #
      #   @return [Symbol, FinchAPI::Models::CreateAccessTokenResponse::ClientType]
      required :client_type, enum: -> { FinchAPI::Models::CreateAccessTokenResponse::ClientType }

      # @!attribute company_id
      #   [DEPRECATED] Use `connection_id` to identify the connection instead of this
      #     company ID.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute connection_id
      #   The Finch UUID of the connection associated with the `access_token`.
      #
      #   @return [String]
      required :connection_id, String

      # @!attribute connection_type
      #   The type of the connection associated with the token.
      #
      #     - `provider` - connection to an external provider
      #     - `finch` - finch-generated data.
      #
      #   @return [Symbol, FinchAPI::Models::CreateAccessTokenResponse::ConnectionType]
      required :connection_type, enum: -> { FinchAPI::Models::CreateAccessTokenResponse::ConnectionType }

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

      # @!attribute customer_id
      #   The ID of your customer you provided to Finch when a connect session was created
      #     for this connection.
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

      # @!attribute [r] token_type
      #   The RFC 8693 token type (Finch uses `bearer` tokens)
      #
      #   @return [String, nil]
      optional :token_type, String

      # @!parse
      #   # @return [String]
      #   attr_writer :token_type

      # @!parse
      #   # @param access_token [String]
      #   # @param account_id [String]
      #   # @param client_type [Symbol, FinchAPI::Models::CreateAccessTokenResponse::ClientType]
      #   # @param company_id [String]
      #   # @param connection_id [String]
      #   # @param connection_type [Symbol, FinchAPI::Models::CreateAccessTokenResponse::ConnectionType]
      #   # @param products [Array<String>]
      #   # @param provider_id [String]
      #   # @param customer_id [String, nil]
      #   # @param token_type [String]
      #   #
      #   def initialize(
      #     access_token:,
      #     account_id:,
      #     client_type:,
      #     company_id:,
      #     connection_id:,
      #     connection_type:,
      #     products:,
      #     provider_id:,
      #     customer_id: nil,
      #     token_type: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | FinchAPI::BaseModel) -> void

      # @abstract
      #
      # The type of application associated with a token.
      #
      # @example
      # ```ruby
      # case client_type
      # in :production
      #   # ...
      # in :development
      #   # ...
      # in :sandbox
      #   # ...
      # end
      # ```
      class ClientType < FinchAPI::Enum
        PRODUCTION = :production
        DEVELOPMENT = :development
        SANDBOX = :sandbox

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # The type of the connection associated with the token.
      #
      #   - `provider` - connection to an external provider
      #   - `finch` - finch-generated data.
      #
      # @example
      # ```ruby
      # case connection_type
      # in :provider
      #   # ...
      # in :finch
      #   # ...
      # end
      # ```
      class ConnectionType < FinchAPI::Enum
        PROVIDER = :provider
        FINCH = :finch

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
