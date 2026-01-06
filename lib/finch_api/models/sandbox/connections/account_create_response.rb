# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      module Connections
        # @see FinchAPI::Resources::Sandbox::Connections::Accounts#create
        class AccountCreateResponse < FinchAPI::Internal::Type::BaseModel
          # @!attribute access_token
          #
          #   @return [String]
          required :access_token, String

          # @!attribute account_id
          #   @deprecated
          #
          #   [DEPRECATED] Use `connection_id` to associate a connection with an access token
          #
          #   @return [String]
          required :account_id, String

          # @!attribute authentication_type
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::Connections::AccountCreateResponse::AuthenticationType]
          required :authentication_type,
                   enum: -> { FinchAPI::Models::Sandbox::Connections::AccountCreateResponse::AuthenticationType }

          # @!attribute company_id
          #   @deprecated
          #
          #   [DEPRECATED] Use `connection_id` to associate a connection with an access token
          #
          #   @return [String]
          required :company_id, String

          # @!attribute connection_id
          #   The ID of the new connection
          #
          #   @return [String]
          required :connection_id, String

          # @!attribute entity_id
          #   The ID of the entity for this connection
          #
          #   @return [String]
          required :entity_id, String

          # @!attribute products
          #
          #   @return [Array<String>]
          required :products, FinchAPI::Internal::Type::ArrayOf[String]

          # @!attribute provider_id
          #   The ID of the provider associated with the `access_token`
          #
          #   @return [String]
          required :provider_id, String

          # @!method initialize(access_token:, account_id:, authentication_type:, company_id:, connection_id:, entity_id:, products:, provider_id:)
          #   @param access_token [String]
          #
          #   @param account_id [String] [DEPRECATED] Use `connection_id` to associate a connection with an access token
          #
          #   @param authentication_type [Symbol, FinchAPI::Models::Sandbox::Connections::AccountCreateResponse::AuthenticationType]
          #
          #   @param company_id [String] [DEPRECATED] Use `connection_id` to associate a connection with an access token
          #
          #   @param connection_id [String] The ID of the new connection
          #
          #   @param entity_id [String] The ID of the entity for this connection
          #
          #   @param products [Array<String>]
          #
          #   @param provider_id [String] The ID of the provider associated with the `access_token`

          # @see FinchAPI::Models::Sandbox::Connections::AccountCreateResponse#authentication_type
          module AuthenticationType
            extend FinchAPI::Internal::Type::Enum

            CREDENTIAL = :credential
            API_TOKEN = :api_token
            OAUTH = :oauth
            ASSISTED = :assisted

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
