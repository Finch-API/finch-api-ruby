# typed: strong

module FinchAPI
  module Resources
    class AccessTokens
      sig do
        params(
          code: String,
          client_id: String,
          client_secret: String,
          redirect_uri: String,
          request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(FinchAPI::Models::CreateAccessTokenResponse)
      end
      def create(code:, client_id: nil, client_secret: nil, redirect_uri: nil, request_options: {})
      end

      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
