# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      module Connections
        class AccountUpdateResponse < FinchAPI::BaseModel
          # @!attribute account_id
          #   [DEPRECATED] Use `connection_id` to associate a connection with an access token
          #
          #   @return [String]
          required :account_id, String

          # @!attribute authentication_type
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse::AuthenticationType]
          required :authentication_type,
                   enum: -> { FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse::AuthenticationType }

          # @!attribute company_id
          #   [DEPRECATED] Use `connection_id` to associate a connection with an access token
          #
          #   @return [String]
          required :company_id, String

          # @!attribute products
          #
          #   @return [Array<String>]
          required :products, FinchAPI::ArrayOf[String]

          # @!attribute provider_id
          #   The ID of the provider associated with the `access_token`
          #
          #   @return [String]
          required :provider_id, String

          # @!attribute [r] connection_id
          #   The ID of the new connection
          #
          #   @return [String, nil]
          optional :connection_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :connection_id

          # @!parse
          #   # @param account_id [String]
          #   # @param authentication_type [Symbol, FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse::AuthenticationType]
          #   # @param company_id [String]
          #   # @param products [Array<String>]
          #   # @param provider_id [String]
          #   # @param connection_id [String]
          #   #
          #   def initialize(account_id:, authentication_type:, company_id:, products:, provider_id:, connection_id: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void

          # @abstract
          #
          class AuthenticationType < FinchAPI::Enum
            CREDENTIAL = :credential
            API_TOKEN = :api_token
            OAUTH = :oauth
            ASSISTED = :assisted

            finalize!
          end
        end
      end
    end
  end
end
