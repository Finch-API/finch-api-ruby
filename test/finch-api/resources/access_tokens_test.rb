# frozen_string_literal: true

require_relative "../test_helper"

class FinchAPI::Test::Resources::AccessTokensTest < FinchAPI::Test::ResourceTest
  def test_create_required_params
    response = @finch.access_tokens.create(code: "<your_authorization_code>")

    assert_pattern do
      response => FinchAPI::Models::CreateAccessTokenResponse
    end

    assert_pattern do
      response => {
        access_token: String,
        account_id: String,
        client_type: FinchAPI::Models::CreateAccessTokenResponse::ClientType,
        company_id: String,
        connection_id: String,
        connection_type: FinchAPI::Models::CreateAccessTokenResponse::ConnectionType,
        products: ^(FinchAPI::ArrayOf[String]),
        provider_id: String,
        customer_id: String | nil,
        token_type: String | nil
      }
    end
  end
end
