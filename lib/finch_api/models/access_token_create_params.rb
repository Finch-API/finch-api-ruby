# frozen_string_literal: true

module FinchAPI
  module Models
    # @see FinchAPI::Resources::AccessTokens#create
    class AccessTokenCreateParams < FinchAPI::Internal::Type::BaseModel
      extend FinchAPI::Internal::Type::RequestParameters::Converter
      include FinchAPI::Internal::Type::RequestParameters

      # @!attribute code
      #   The authorization code received from the authorization server
      #
      #   @return [String]
      required :code, String

      # @!attribute client_id
      #   The client ID for your application
      #
      #   @return [String, nil]
      optional :client_id, String

      # @!attribute client_secret
      #   The client secret for your application
      #
      #   @return [String, nil]
      optional :client_secret, String

      # @!attribute redirect_uri
      #   The redirect URI used when creating the Connect session. Required if the
      #   authorization code came from the redirect flow, and it must match the
      #   `redirect_uri` used to create the session. Omit it if the code came from the
      #   embedded flow (Connect SDK).
      #
      #   @return [String, nil]
      optional :redirect_uri, String

      # @!method initialize(code:, client_id: nil, client_secret: nil, redirect_uri: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {FinchAPI::Models::AccessTokenCreateParams} for more details.
      #
      #   @param code [String] The authorization code received from the authorization server
      #
      #   @param client_id [String] The client ID for your application
      #
      #   @param client_secret [String] The client secret for your application
      #
      #   @param redirect_uri [String] The redirect URI used when creating the Connect session. Required if the authori
      #
      #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
