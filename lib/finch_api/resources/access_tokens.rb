# frozen_string_literal: true

module FinchAPI
  module Resources
    class AccessTokens
      # Exchange the authorization code for an access token
      #
      # @overload create(code:, client_id: nil, client_secret: nil, redirect_uri: nil, request_options: {})
      #
      # @param code [String]
      # @param client_id [String]
      # @param client_secret [String]
      # @param redirect_uri [String]
      # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [FinchAPI::Models::CreateAccessTokenResponse]
      #
      # @see FinchAPI::Models::AccessTokenCreateParams
      def create(params)
        parsed, options = FinchAPI::Models::AccessTokenCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "auth/token",
          body: parsed,
          model: FinchAPI::Models::CreateAccessTokenResponse,
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
