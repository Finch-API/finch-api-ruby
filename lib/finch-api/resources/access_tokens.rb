# frozen_string_literal: true

module FinchAPI
  module Resources
    class AccessTokens
      # Exchange the authorization code for an access token
      #
      # @param params [FinchAPI::Models::AccessTokenCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :code
      #
      #   @option params [String] :client_id
      #
      #   @option params [String] :client_secret
      #
      #   @option params [String] :redirect_uri
      #
      #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
