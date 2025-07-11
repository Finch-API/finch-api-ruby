# frozen_string_literal: true

module FinchAPI
  module Models
    module Connect
      # @see FinchAPI::Resources::Connect::Sessions#reauthenticate
      class SessionReauthenticateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute connection_id
        #   The ID of the existing connection to reauthenticate
        #
        #   @return [String]
        required :connection_id, String

        # @!attribute minutes_to_expire
        #   The number of minutes until the session expires (defaults to 43,200, which is 30
        #   days)
        #
        #   @return [Integer, nil]
        optional :minutes_to_expire, Integer, nil?: true

        # @!attribute products
        #   The products to request access to (optional for reauthentication)
        #
        #   @return [Array<Symbol, FinchAPI::Models::Connect::SessionReauthenticateParams::Product>, nil]
        optional :products,
                 -> {
                   FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Connect::SessionReauthenticateParams::Product]
                 },
                 nil?: true

        # @!attribute redirect_uri
        #   The URI to redirect to after the Connect flow is completed
        #
        #   @return [String, nil]
        optional :redirect_uri, String, nil?: true

        # @!method initialize(connection_id:, minutes_to_expire: nil, products: nil, redirect_uri: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::Connect::SessionReauthenticateParams} for more details.
        #
        #   @param connection_id [String] The ID of the existing connection to reauthenticate
        #
        #   @param minutes_to_expire [Integer, nil] The number of minutes until the session expires (defaults to 43,200, which is 30
        #
        #   @param products [Array<Symbol, FinchAPI::Models::Connect::SessionReauthenticateParams::Product>, nil] The products to request access to (optional for reauthentication)
        #
        #   @param redirect_uri [String, nil] The URI to redirect to after the Connect flow is completed
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
      end
    end
  end
end
