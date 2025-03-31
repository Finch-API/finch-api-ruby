# frozen_string_literal: true

module FinchAPI
  module Models
    module Connect
      class SessionNewParams < FinchAPI::BaseModel
        # @!parse
        #   extend FinchAPI::Type::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute customer_name
        #
        #   @return [String]
        required :customer_name, String

        # @!attribute products
        #
        #   @return [Array<Symbol, FinchAPI::Models::Connect::SessionNewParams::Product>]
        required :products, -> { FinchAPI::ArrayOf[enum: FinchAPI::Models::Connect::SessionNewParams::Product] }

        # @!attribute customer_email
        #
        #   @return [String, nil]
        optional :customer_email, String, nil?: true

        # @!attribute integration
        #
        #   @return [FinchAPI::Models::Connect::SessionNewParams::Integration, nil]
        optional :integration, -> { FinchAPI::Models::Connect::SessionNewParams::Integration }, nil?: true

        # @!attribute manual
        #
        #   @return [Boolean, nil]
        optional :manual, FinchAPI::BooleanModel, nil?: true

        # @!attribute minutes_to_expire
        #   The number of minutes until the session expires (defaults to 43,200, which is 30
        #     days)
        #
        #   @return [Float, nil]
        optional :minutes_to_expire, Float, nil?: true

        # @!attribute redirect_uri
        #
        #   @return [String, nil]
        optional :redirect_uri, String, nil?: true

        # @!attribute sandbox
        #
        #   @return [Symbol, FinchAPI::Models::Connect::SessionNewParams::Sandbox, nil]
        optional :sandbox, enum: -> { FinchAPI::Models::Connect::SessionNewParams::Sandbox }, nil?: true

        # @!parse
        #   # @param customer_id [String]
        #   # @param customer_name [String]
        #   # @param products [Array<Symbol, FinchAPI::Models::Connect::SessionNewParams::Product>]
        #   # @param customer_email [String, nil]
        #   # @param integration [FinchAPI::Models::Connect::SessionNewParams::Integration, nil]
        #   # @param manual [Boolean, nil]
        #   # @param minutes_to_expire [Float, nil]
        #   # @param redirect_uri [String, nil]
        #   # @param sandbox [Symbol, FinchAPI::Models::Connect::SessionNewParams::Sandbox, nil]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     customer_id:,
        #     customer_name:,
        #     products:,
        #     customer_email: nil,
        #     integration: nil,
        #     manual: nil,
        #     minutes_to_expire: nil,
        #     redirect_uri: nil,
        #     sandbox: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        # The Finch products that can be requested during the Connect flow.
        module Product
          extend FinchAPI::Enum

          COMPANY = :company
          DIRECTORY = :directory
          INDIVIDUAL = :individual
          EMPLOYMENT = :employment
          PAYMENT = :payment
          PAY_STATEMENT = :pay_statement
          BENEFITS = :benefits
          SSN = :ssn

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        class Integration < FinchAPI::BaseModel
          # @!attribute auth_method
          #
          #   @return [Symbol, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod, nil]
          optional :auth_method,
                   enum: -> { FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod },
                   nil?: true

          # @!attribute provider
          #
          #   @return [String, nil]
          optional :provider, String, nil?: true

          # @!parse
          #   # @param auth_method [Symbol, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod, nil]
          #   # @param provider [String, nil]
          #   #
          #   def initialize(auth_method: nil, provider: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void

          module AuthMethod
            extend FinchAPI::Enum

            ASSISTED = :assisted
            CREDENTIAL = :credential
            OAUTH = :oauth
            API_TOKEN = :api_token

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        module Sandbox
          extend FinchAPI::Enum

          FINCH = :finch
          PROVIDER = :provider

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
