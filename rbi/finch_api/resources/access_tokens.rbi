# typed: strong

module FinchAPI
  module Resources
    class AccessTokens
      # Exchange the authorization code for an access token
      sig do
        params(
          client_id: String,
          client_secret: String,
          code: String,
          redirect_uri: String,
          request_options: FinchAPI::RequestOptions::OrHash
        ).returns(FinchAPI::CreateAccessTokenResponse)
      end
      def create(
        # The client ID for your application
        client_id:,
        # The client secret for your application
        client_secret:,
        # The authorization code received from the authorization server
        code:,
        # The redirect URI used in the authorization request (optional)
        redirect_uri: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
