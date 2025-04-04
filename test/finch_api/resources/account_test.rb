# frozen_string_literal: true

require_relative "../test_helper"

class FinchAPI::Test::Resources::AccountTest < FinchAPI::Test::ResourceTest
  def test_disconnect
    response = @finch.account.disconnect

    assert_pattern do
      response => FinchAPI::Models::DisconnectResponse
    end

    assert_pattern do
      response => {
        status: String
      }
    end
  end

  def test_introspect
    response = @finch.account.introspect

    assert_pattern do
      response => FinchAPI::Models::Introspection
    end

    assert_pattern do
      response => {
        account_id: String,
        authentication_methods: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Introspection::AuthenticationMethod]),
        client_id: String,
        client_type: FinchAPI::Models::Introspection::ClientType,
        company_id: String,
        connection_id: String,
        connection_status: FinchAPI::Models::Introspection::ConnectionStatus,
        connection_type: FinchAPI::Models::Introspection::ConnectionType,
        customer_email: String | nil,
        customer_id: String | nil,
        customer_name: String | nil,
        manual: FinchAPI::Internal::Type::BooleanModel,
        payroll_provider_id: String,
        products: ^(FinchAPI::Internal::Type::ArrayOf[String]),
        provider_id: String,
        username: String
      }
    end
  end
end
