# frozen_string_literal: true

module FinchAPI
  module Models
    # @see FinchAPI::Resources::AccessTokens#create
    class AccessTokenCreateParams < FinchAPI::Internal::Type::BaseModel
      extend FinchAPI::Internal::Type::RequestParameters::Converter
      include FinchAPI::Internal::Type::RequestParameters

      # @!attribute client_id
      #   The client ID for your application
      #
      #   @return [String]
      required :client_id, String

      # @!attribute client_secret
      #   The client secret for your application
      #
      #   @return [String]
      required :client_secret, String

      # @!attribute code
      #   The authorization code received from the authorization server
      #
      #   @return [String]
      required :code, String

      # @!attribute redirect_uri
      #   The redirect URI used in the authorization request (optional)
      #
      #   @return [String, nil]
      optional :redirect_uri, String

      # @!method initialize(client_id:, client_secret:, code:, redirect_uri: nil, request_options: {})
      #   @param client_id [String] The client ID for your application
      #
      #   @param client_secret [String] The client secret for your application
      #
      #   @param code [String] The authorization code received from the authorization server
      #
      #   @param redirect_uri [String] The redirect URI used in the authorization request (optional)
      #
      #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
