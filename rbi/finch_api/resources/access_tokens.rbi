# typed: strong

module FinchAPI
  module Resources
    class AccessTokens
      # Exchange the authorization code for an access token
      sig do
        params(
          code: String,
          client_id: String,
          client_secret: String,
          redirect_uri: String,
          request_options: FinchAPI::RequestOptions::OrHash
        ).returns(FinchAPI::CreateAccessTokenResponse)
      end
      def create(
        # The authorization code received from the authorization server
        code:,
        # The client ID for your application
        client_id: nil,
        # The client secret for your application
        client_secret: nil,
        # The redirect URI used when creating the Connect session. Required if the
        # authorization code came from the redirect flow, and it must match the
        # `redirect_uri` used to create the session. Omit it if the code came from the
        # embedded flow (Connect SDK).
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
