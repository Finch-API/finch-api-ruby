# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      module Connections
        class AccountCreateParams < FinchAPI::BaseModel
          # @!parse
          #   extend FinchAPI::RequestParameters::Converter
          include FinchAPI::RequestParameters

          # @!attribute company_id
          #
          #   @return [String]
          required :company_id, String

          # @!attribute provider_id
          #   The provider associated with the `access_token`
          #
          #   @return [String]
          required :provider_id, String

          # @!attribute [r] authentication_type
          #
          #   @return [Symbol, FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType, nil]
          optional :authentication_type,
                   enum: -> { FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType }

          # @!parse
          #   # @return [Symbol, FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType]
          #   attr_writer :authentication_type

          # @!attribute [r] products
          #   Optional, defaults to Organization products (`company`, `directory`,
          #     `employment`, `individual`)
          #
          #   @return [Array<String>, nil]
          optional :products, FinchAPI::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :products

          # @!parse
          #   # @param company_id [String]
          #   # @param provider_id [String]
          #   # @param authentication_type [Symbol, FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType]
          #   # @param products [Array<String>]
          #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(company_id:, provider_id:, authentication_type: nil, products: nil, request_options: {}, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void

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
