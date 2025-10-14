# frozen_string_literal: true

module FinchAPI
  module Models
    module Connect
      # @see FinchAPI::Resources::Connect::Sessions#new
      class SessionNewParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute customer_email
        #   Email address of the customer
        #
        #   @return [String, nil]
        required :customer_email, String, nil?: true

        # @!attribute customer_id
        #   Unique identifier for the customer
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute customer_name
        #   Name of the customer
        #
        #   @return [String]
        required :customer_name, String

        # @!attribute integration
        #   Integration configuration for the connect session
        #
        #   @return [FinchAPI::Models::Connect::SessionNewParams::Integration, nil]
        required :integration, -> { FinchAPI::Connect::SessionNewParams::Integration }, nil?: true

        # @!attribute manual
        #   Enable manual authentication mode
        #
        #   @return [Boolean, nil]
        required :manual, FinchAPI::Internal::Type::Boolean, nil?: true

        # @!attribute minutes_to_expire
        #   The number of minutes until the session expires (defaults to 129,600, which is
        #   90 days)
        #
        #   @return [Float, nil]
        required :minutes_to_expire, Float, nil?: true

        # @!attribute products
        #   The Finch products to request access to
        #
        #   @return [Array<Symbol, FinchAPI::Models::Connect::SessionNewParams::Product>]
        required :products,
                 -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Connect::SessionNewParams::Product] }

        # @!attribute redirect_uri
        #   The URI to redirect to after the Connect flow is completed
        #
        #   @return [String, nil]
        required :redirect_uri, String, nil?: true

        # @!attribute sandbox
        #   Sandbox mode for testing
        #
        #   @return [Symbol, FinchAPI::Models::Connect::SessionNewParams::Sandbox, nil]
        required :sandbox, enum: -> { FinchAPI::Connect::SessionNewParams::Sandbox }, nil?: true

        # @!method initialize(customer_email:, customer_id:, customer_name:, integration:, manual:, minutes_to_expire:, products:, redirect_uri:, sandbox:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::Connect::SessionNewParams} for more details.
        #
        #   @param customer_email [String, nil] Email address of the customer
        #
        #   @param customer_id [String] Unique identifier for the customer
        #
        #   @param customer_name [String] Name of the customer
        #
        #   @param integration [FinchAPI::Models::Connect::SessionNewParams::Integration, nil] Integration configuration for the connect session
        #
        #   @param manual [Boolean, nil] Enable manual authentication mode
        #
        #   @param minutes_to_expire [Float, nil] The number of minutes until the session expires (defaults to 129,600, which is 9
        #
        #   @param products [Array<Symbol, FinchAPI::Models::Connect::SessionNewParams::Product>] The Finch products to request access to
        #
        #   @param redirect_uri [String, nil] The URI to redirect to after the Connect flow is completed
        #
        #   @param sandbox [Symbol, FinchAPI::Models::Connect::SessionNewParams::Sandbox, nil] Sandbox mode for testing
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

        class Integration < FinchAPI::Internal::Type::BaseModel
          # @!attribute auth_method
          #   The authentication method to use
          #
          #   @return [Symbol, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod, nil]
          required :auth_method,
                   enum: -> { FinchAPI::Connect::SessionNewParams::Integration::AuthMethod },
                   nil?: true

          # @!attribute provider
          #   The provider to integrate with
          #
          #   @return [String, nil]
          required :provider, String, nil?: true

          # @!method initialize(auth_method:, provider:)
          #   Integration configuration for the connect session
          #
          #   @param auth_method [Symbol, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod, nil] The authentication method to use
          #
          #   @param provider [String, nil] The provider to integrate with

          # The authentication method to use
          #
          # @see FinchAPI::Models::Connect::SessionNewParams::Integration#auth_method
          module AuthMethod
            extend FinchAPI::Internal::Type::Enum

            ASSISTED = :assisted
            CREDENTIAL = :credential
            OAUTH = :oauth
            API_TOKEN = :api_token

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The Finch products that can be requested during the Connect flow.
        module Product
          extend FinchAPI::Internal::Type::Enum

          BENEFITS = :benefits
          COMPANY = :company
          DEDUCTION = :deduction
          DIRECTORY = :directory
          DOCUMENTS = :documents
          EMPLOYMENT = :employment
          INDIVIDUAL = :individual
          PAYMENT = :payment
          PAY_STATEMENT = :pay_statement
          SSN = :ssn

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Sandbox mode for testing
        module Sandbox
          extend FinchAPI::Internal::Type::Enum

          FINCH = :finch
          PROVIDER = :provider

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
