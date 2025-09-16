# frozen_string_literal: true

module FinchAPI
  module Resources
    class AccessTokens
      # Exchange the authorization code for an access token
      #
      # @overload create(code:, client_id: nil, client_secret: nil, redirect_uri: nil, request_options: {})
      #
      # @param code [String] The authorization code received from the authorization server
      #
      # @param client_id [String] The client ID for your application
      #
      # @param client_secret [String] The client secret for your application
      #
      # @param redirect_uri [String] The redirect URI used in the authorization request (optional)
      #
      # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [FinchAPI::Models::CreateAccessTokenResponse]
      #
      # @see FinchAPI::Models::AccessTokenCreateParams
      def create(params)
        parsed, options = FinchAPI::AccessTokenCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "auth/token",
          body: parsed,
          model: FinchAPI::CreateAccessTokenResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [FinchAPI::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
