# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      class ConnectionCreateParams < FinchAPI::BaseModel
        # @!parse
        #   extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # @!attribute provider_id
        #   The provider associated with the connection
        #
        #   @return [String]
        required :provider_id, String

        # @!attribute [r] authentication_type
        #
        #   @return [Symbol, FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType, nil]
        optional :authentication_type,
                 enum: -> { FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType }

        # @!parse
        #   # @return [Symbol, FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType]
        #   attr_writer :authentication_type

        # @!attribute [r] employee_size
        #   Optional: the size of the employer to be created with this connection. Defaults
        #     to 20. Note that if this is higher than 100, historical payroll data will not be
        #     generated, and instead only one pay period will be created.
        #
        #   @return [Integer, nil]
        optional :employee_size, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :employee_size

        # @!attribute [r] products
        #
        #   @return [Array<String>, nil]
        optional :products, FinchAPI::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :products

        # @!parse
        #   # @param provider_id [String]
        #   # @param authentication_type [Symbol, FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType]
        #   # @param employee_size [Integer]
        #   # @param products [Array<String>]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(provider_id:, authentication_type: nil, employee_size: nil, products: nil, request_options: {}, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case authentication_type
        # in :credential
        #   # ...
        # in :api_token
        #   # ...
        # in :oauth
        #   # ...
        # in :assisted
        #   # ...
        # end
        # ```
        class AuthenticationType < FinchAPI::Enum
          CREDENTIAL = :credential
          API_TOKEN = :api_token
          OAUTH = :oauth
          ASSISTED = :assisted

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
