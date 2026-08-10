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

        # @!attribute company_id
        #
        #   @return [String, nil]
        optional :company_id, String, nil?: true

        # @!method initialize(access_token:, account_id:, authentication_type:, connection_id:, entity_id:, products:, provider_id:, token_type:, company_id: nil)
        #   @param access_token [String]
        #   @param account_id [String]
        #   @param authentication_type [Symbol, FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType]
        #   @param connection_id [String]
        #   @param entity_id [String]
        #   @param products [Array<String>]
        #   @param provider_id [String]
        #   @param token_type [String]
        #   @param company_id [String, nil]

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
