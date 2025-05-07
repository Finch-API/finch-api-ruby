# frozen_string_literal: true

require_relative "../test_helper"

class FinchAPI::Test::Resources::AccountTest < FinchAPI::Test::ResourceTest
  def test_disconnect
    response = @finch.account.disconnect

    assert_pattern do
      response => FinchAPI::DisconnectResponse
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
      response => FinchAPI::Introspection
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        authentication_methods: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Introspection::AuthenticationMethod]),
        client_id: String,
        client_type: FinchAPI::Introspection::ClientType,
        company_id: String,
        connection_id: String,
        connection_status: FinchAPI::Introspection::ConnectionStatus,
        connection_type: FinchAPI::Introspection::ConnectionType,
        customer_email: String | nil,
        customer_id: String | nil,
        customer_name: String | nil,
        manual: FinchAPI::Internal::Type::Boolean,
        payroll_provider_id: String,
        products: ^(FinchAPI::Internal::Type::ArrayOf[String]),
        provider_id: String,
        username: String
      }
    end
  end
end
