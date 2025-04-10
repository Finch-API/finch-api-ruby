# frozen_string_literal: true

module FinchAPI
  module Models
    module Connect
      # @see FinchAPI::Resources::Connect::Sessions#reauthenticate
      class SessionReauthenticateParams < FinchAPI::Internal::Type::BaseModel
        # @!parse
        #   extend FinchAPI::Internal::Type::RequestParameters::Converter
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
                 -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Models::Connect::SessionReauthenticateParams::Product] },
                 nil?: true

        # @!attribute redirect_uri
        #   The URI to redirect to after the Connect flow is completed
        #
        #   @return [String, nil]
        optional :redirect_uri, String, nil?: true

        # @!parse
        #   # @param connection_id [String]
        #   # @param minutes_to_expire [Integer, nil]
        #   # @param products [Array<Symbol, FinchAPI::Models::Connect::SessionReauthenticateParams::Product>, nil]
        #   # @param redirect_uri [String, nil]
        #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(connection_id:, minutes_to_expire: nil, products: nil, redirect_uri: nil, request_options: {}, **) = super

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
