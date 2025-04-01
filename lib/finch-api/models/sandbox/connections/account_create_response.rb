# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      module Connections
        class AccountCreateResponse < FinchAPI::BaseModel
          # @!attribute access_token
          #
          #   @return [String]
          required :access_token, String

          # @!attribute account_id
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
          #   [DEPRECATED] Use `connection_id` to associate a connection with an access token
          #
          #   @return [String]
          required :company_id, String

          # @!attribute connection_id
          #   The ID of the new connection
          #
          #   @return [String]
          required :connection_id, String

          # @!attribute products
          #
          #   @return [Array<String>]
          required :products, FinchAPI::ArrayOf[String]

          # @!attribute provider_id
          #   The ID of the provider associated with the `access_token`
          #
          #   @return [String]
          required :provider_id, String

          # @!parse
          #   # @param access_token [String]
          #   # @param account_id [String]
          #   # @param authentication_type [Symbol, FinchAPI::Models::Sandbox::Connections::AccountCreateResponse::AuthenticationType]
          #   # @param company_id [String]
          #   # @param connection_id [String]
          #   # @param products [Array<String>]
          #   # @param provider_id [String]
          #   #
          #   def initialize(access_token:, account_id:, authentication_type:, company_id:, connection_id:, products:, provider_id:, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void

          # @see FinchAPI::Models::Sandbox::Connections::AccountCreateResponse#authentication_type
          module AuthenticationType
            extend FinchAPI::Enum

            CREDENTIAL = :credential
            API_TOKEN = :api_token
            OAUTH = :oauth
            ASSISTED = :assisted

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end
    end
  end
end
