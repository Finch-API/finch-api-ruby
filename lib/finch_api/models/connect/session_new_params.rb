# frozen_string_literal: true

module FinchAPI
  module Models
    module Connect
      # @see FinchAPI::Resources::Connect::Sessions#new
      class SessionNewParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

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
        required :products,
                 -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Connect::SessionNewParams::Product] }

        # @!attribute customer_email
        #
        #   @return [String, nil]
        optional :customer_email, String, nil?: true

        # @!attribute integration
        #
        #   @return [FinchAPI::Models::Connect::SessionNewParams::Integration, nil]
        optional :integration, -> { FinchAPI::Connect::SessionNewParams::Integration }, nil?: true

        # @!attribute manual
        #
        #   @return [Boolean, nil]
        optional :manual, FinchAPI::Internal::Type::Boolean, nil?: true

        # @!attribute minutes_to_expire
        #   The number of minutes until the session expires (defaults to 129,600, which is
        #   90 days)
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
        optional :sandbox, enum: -> { FinchAPI::Connect::SessionNewParams::Sandbox }, nil?: true

        # @!method initialize(customer_id:, customer_name:, products:, customer_email: nil, integration: nil, manual: nil, minutes_to_expire: nil, redirect_uri: nil, sandbox: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::Connect::SessionNewParams} for more details.
        #
        #   @param customer_id [String]
        #
        #   @param customer_name [String]
        #
        #   @param products [Array<Symbol, FinchAPI::Models::Connect::SessionNewParams::Product>]
        #
        #   @param customer_email [String, nil]
        #
        #   @param integration [FinchAPI::Models::Connect::SessionNewParams::Integration, nil]
        #
        #   @param manual [Boolean, nil]
        #
        #   @param minutes_to_expire [Float, nil] The number of minutes until the session expires (defaults to 129,600, which is 9
        #
        #   @param redirect_uri [String, nil]
        #
        #   @param sandbox [Symbol, FinchAPI::Models::Connect::SessionNewParams::Sandbox, nil]
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

        # The Finch products that can be requested during the Connect flow.
        module Product
          extend FinchAPI::Internal::Type::Enum

          COMPANY = :company
          DIRECTORY = :directory
          INDIVIDUAL = :individual
          EMPLOYMENT = :employment
          PAYMENT = :payment
          PAY_STATEMENT = :pay_statement
          BENEFITS = :benefits
          SSN = :ssn
          DEDUCTION = :deduction
          DOCUMENTS = :documents

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Integration < FinchAPI::Internal::Type::BaseModel
          # @!attribute auth_method
          #
          #   @return [Symbol, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod, nil]
          optional :auth_method,
                   enum: -> { FinchAPI::Connect::SessionNewParams::Integration::AuthMethod },
                   nil?: true

          # @!attribute provider
          #
          #   @return [String, nil]
          optional :provider, String, nil?: true

          # @!method initialize(auth_method: nil, provider: nil)
          #   @param auth_method [Symbol, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod, nil]
          #   @param provider [String, nil]

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
