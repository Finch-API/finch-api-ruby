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
        #   [DEPRECATED] Use `connection_id` to associate a connection with an access token
        #
        #   @return [String]
        required :account_id, String

        # @!attribute authentication_type
        #
        #   @return [Symbol, FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType]
        required :authentication_type,
                 enum: -> { FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType }

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
        required :products, FinchAPI::Internal::Type::ArrayOf[String]

        # @!attribute provider_id
        #   The ID of the provider associated with the `access_token`.
        #
        #   @return [String]
        required :provider_id, String

        # @!attribute [r] token_type
        #
        #   @return [String, nil]
        optional :token_type, String

        # @!parse
        #   # @return [String]
        #   attr_writer :token_type

        # @!parse
        #   # @param access_token [String]
        #   # @param account_id [String]
        #   # @param authentication_type [Symbol, FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType]
        #   # @param company_id [String]
        #   # @param connection_id [String]
        #   # @param products [Array<String>]
        #   # @param provider_id [String]
        #   # @param token_type [String]
        #   #
        #   def initialize(
        #     access_token:,
        #     account_id:,
        #     authentication_type:,
        #     company_id:,
        #     connection_id:,
        #     products:,
        #     provider_id:,
        #     token_type: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

        # @see FinchAPI::Models::Sandbox::ConnectionCreateResponse#authentication_type
        module AuthenticationType
          extend FinchAPI::Internal::Type::Enum

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
