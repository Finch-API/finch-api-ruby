# frozen_string_literal: true

module FinchAPI
  module Models
    # @see FinchAPI::Resources::AccessTokens#create
    class CreateAccessTokenResponse < FinchAPI::Internal::Type::BaseModel
      # @!attribute access_token
      #   The access token for the connection.
      #
      #   @return [String]
      required :access_token, String

      # @!attribute account_id
      #   @deprecated
      #
      #   [DEPRECATED] Use `connection_id` to identify the connection instead of this
      #   account ID.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute client_type
      #   The type of application associated with a token.
      #
      #   @return [Symbol, FinchAPI::Models::CreateAccessTokenResponse::ClientType]
      required :client_type, enum: -> { FinchAPI::CreateAccessTokenResponse::ClientType }

      # @!attribute company_id
      #   @deprecated
      #
      #   [DEPRECATED] Use `connection_id` to identify the connection instead of this
      #   company ID.
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
      #   - `provider` - connection to an external provider
      #   - `finch` - finch-generated data.
      #
      #   @return [Symbol, FinchAPI::Models::CreateAccessTokenResponse::ConnectionType]
      required :connection_type, enum: -> { FinchAPI::CreateAccessTokenResponse::ConnectionType }

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

      # @!attribute customer_id
      #   The ID of your customer you provided to Finch when a connect session was created
      #   for this connection.
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

      # @!attribute token_type
      #   The RFC 8693 token type (Finch uses `bearer` tokens)
      #
      #   @return [String, nil]
      optional :token_type, String

      # @!method initialize(access_token:, account_id:, client_type:, company_id:, connection_id:, connection_type:, products:, provider_id:, customer_id: nil, token_type: nil)
      #   Some parameter documentations has been truncated, see
      #   {FinchAPI::Models::CreateAccessTokenResponse} for more details.
      #
      #   @param access_token [String] The access token for the connection.
      #
      #   @param account_id [String] [DEPRECATED] Use `connection_id` to identify the connection instead of this acco
      #
      #   @param client_type [Symbol, FinchAPI::Models::CreateAccessTokenResponse::ClientType] The type of application associated with a token.
      #
      #   @param company_id [String] [DEPRECATED] Use `connection_id` to identify the connection instead of this comp
      #
      #   @param connection_id [String] The Finch UUID of the connection associated with the `access_token`.
      #
      #   @param connection_type [Symbol, FinchAPI::Models::CreateAccessTokenResponse::ConnectionType] The type of the connection associated with the token.
      #
      #   @param products [Array<String>] An array of the authorized products associated with the `access_token`.
      #
      #   @param provider_id [String] The ID of the provider associated with the `access_token`.
      #
      #   @param customer_id [String, nil] The ID of your customer you provided to Finch when a connect session was created
      #
      #   @param token_type [String] The RFC 8693 token type (Finch uses `bearer` tokens)

      # The type of application associated with a token.
      #
      # @see FinchAPI::Models::CreateAccessTokenResponse#client_type
      module ClientType
        extend FinchAPI::Internal::Type::Enum

        PRODUCTION = :production
        DEVELOPMENT = :development
        SANDBOX = :sandbox

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of the connection associated with the token.
      #
      # - `provider` - connection to an external provider
      # - `finch` - finch-generated data.
      #
      # @see FinchAPI::Models::CreateAccessTokenResponse#connection_type
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
