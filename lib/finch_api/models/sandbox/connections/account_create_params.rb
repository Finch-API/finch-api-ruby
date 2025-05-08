# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      module Connections
        # @see FinchAPI::Resources::Sandbox::Connections::Accounts#create
        class AccountCreateParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # @!attribute company_id
          #
          #   @return [String]
          required :company_id, String

          # @!attribute provider_id
          #   The provider associated with the `access_token`
          #
          #   @return [String]
          required :provider_id, String

          # @!attribute authentication_type
          #
          #   @return [Symbol, FinchAPI::Sandbox::Connections::AccountCreateParams::AuthenticationType, nil]
          optional :authentication_type,
                   enum: -> { FinchAPI::Sandbox::Connections::AccountCreateParams::AuthenticationType }

          # @!attribute products
          #   Optional, defaults to Organization products (`company`, `directory`,
          #   `employment`, `individual`)
          #
          #   @return [Array<String>, nil]
          optional :products, FinchAPI::Internal::Type::ArrayOf[String]

          # @!method initialize(company_id:, provider_id:, authentication_type: nil, products: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {FinchAPI::Models::Sandbox::Connections::AccountCreateParams} for more details.
          #
          #   @param company_id [String]
          #
          #   @param provider_id [String] The provider associated with the `access_token`
          #
          #   @param authentication_type [Symbol, FinchAPI::Sandbox::Connections::AccountCreateParams::AuthenticationType]
          #
          #   @param products [Array<String>] Optional, defaults to Organization products (`company`, `directory`, `employment
          #
          #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

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
