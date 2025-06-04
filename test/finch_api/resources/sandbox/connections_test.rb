# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::Sandbox::ConnectionsTest < FinchAPI::Test::ResourceTest
  def test_create_required_params
    skip("prism tests are broken")

    response = @finch.sandbox.connections.create(provider_id: "provider_id")

    assert_pattern do
      response => FinchAPI::Models::Sandbox::ConnectionCreateResponse
    end

    assert_pattern do
      response => {
        access_token: String,
        account_id: String,
        authentication_type: FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType,
        company_id: String,
        connection_id: String,
        products: ^(FinchAPI::Internal::Type::ArrayOf[String]),
        provider_id: String,
        token_type: String | nil
      }
    end
  end
end
