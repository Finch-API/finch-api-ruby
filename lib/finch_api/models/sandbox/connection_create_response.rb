# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      # @see FinchAPI::Resources::Sandbox::Connections#create
      class ConnectionCreateResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute access_token
        #
        #   @return [String]
        required :access_token, String

        # @!attribute account_id
        #
        #   @return [String]
        required :account_id, String

        # @!attribute authentication_type
        #
        #   @return [Symbol, FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType]
        required :authentication_type,
                 enum: -> { FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType }

        # @!attribute company_id
        #
        #   @return [String, nil]
        required :company_id, String, nil?: true

        # @!attribute connection_id
        #
        #   @return [String]
        required :connection_id, String

        # @!attribute entity_id
        #
        #   @return [String]
        required :entity_id, String

        # @!attribute products
        #
        #   @return [Array<String>]
        required :products, FinchAPI::Internal::Type::ArrayOf[String]

        # @!attribute provider_id
        #
        #   @return [String]
        required :provider_id, String

        # @!attribute token_type
        #
        #   @return [String]
        required :token_type, String

        # @!method initialize(access_token:, account_id:, authentication_type:, company_id:, connection_id:, entity_id:, products:, provider_id:, token_type:)
        #   @param access_token [String]
        #   @param account_id [String]
        #   @param authentication_type [Symbol, FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType]
        #   @param company_id [String, nil]
        #   @param connection_id [String]
        #   @param entity_id [String]
        #   @param products [Array<String>]
        #   @param provider_id [String]
        #   @param token_type [String]

        # @see FinchAPI::Models::Sandbox::ConnectionCreateResponse#authentication_type
        module AuthenticationType
          extend FinchAPI::Internal::Type::Enum

          API_TOKEN = :api_token
          ASSISTED = :assisted
          CREDENTIAL = :credential
          OAUTH = :oauth

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
