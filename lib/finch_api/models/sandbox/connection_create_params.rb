# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      # @see FinchAPI::Resources::Sandbox::Connections#create
      class ConnectionCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute provider_id
        #   The provider associated with the connection
        #
        #   @return [String]
        required :provider_id, String

        # @!attribute authentication_type
        #
        #   @return [Symbol, FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType, nil]
        optional :authentication_type,
                 enum: -> { FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType }

        # @!attribute employee_size
        #   Optional: the size of the employer to be created with this connection. Defaults
        #   to 20. Note that if this is higher than 100, historical payroll data will not be
        #   generated, and instead only one pay period will be created.
        #
        #   @return [Integer, nil]
        optional :employee_size, Integer

        # @!attribute products
        #
        #   @return [Array<String>, nil]
        optional :products, FinchAPI::Internal::Type::ArrayOf[String]

        # @!method initialize(provider_id:, authentication_type: nil, employee_size: nil, products: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::Sandbox::ConnectionCreateParams} for more details.
        #
        #   @param provider_id [String] The provider associated with the connection
        #
        #   @param authentication_type [Symbol, FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType]
        #
        #   @param employee_size [Integer] Optional: the size of the employer to be created with this connection. Defaults
        #   ...
        #
        #   @param products [Array<String>]
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
