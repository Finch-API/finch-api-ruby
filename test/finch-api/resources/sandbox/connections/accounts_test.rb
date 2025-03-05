# frozen_string_literal: true

require_relative "../../../test_helper"

class FinchAPI::Test::Resources::Sandbox::Connections::AccountsTest < FinchAPI::Test::ResourceTest
  def test_create_required_params
    response = @finch.sandbox.connections.accounts.create(
      company_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      provider_id: "provider_id"
    )

    assert_pattern do
      response => FinchAPI::Models::Sandbox::Connections::AccountCreateResponse
    end

    assert_pattern do
      response => {
        access_token: String,
        account_id: String,
        authentication_type: FinchAPI::Models::Sandbox::Connections::AccountCreateResponse::AuthenticationType,
        company_id: String,
        connection_id: String,
        products: ^(FinchAPI::ArrayOf[String]),
        provider_id: String
      }
    end
  end

  def test_update
    response = @finch.sandbox.connections.accounts.update

    assert_pattern do
      response => FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse
    end

    assert_pattern do
      response => {
        account_id: String,
        authentication_type: FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse::AuthenticationType,
        company_id: String,
        products: ^(FinchAPI::ArrayOf[String]),
        provider_id: String,
        connection_id: String | nil
      }
    end
  end
end
