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
        client_id: String,
        client_type: FinchAPI::Introspection::ClientType,
        connection_id: String,
        connection_status: FinchAPI::Introspection::ConnectionStatus,
        connection_type: FinchAPI::Introspection::ConnectionType,
        products: ^(FinchAPI::Internal::Type::ArrayOf[String]),
        provider_id: String,
        account_id: String | nil,
        authentication_methods: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Introspection::AuthenticationMethod]) | nil,
        company_id: String | nil,
        customer_email: String | nil,
        customer_id: String | nil,
        customer_name: String | nil,
        entity_ids: ^(FinchAPI::Internal::Type::ArrayOf[String]) | nil,
        entity_mode: FinchAPI::Introspection::EntityMode | nil,
        manual: FinchAPI::Internal::Type::Boolean | nil,
        payroll_provider_id: String | nil,
        username: String | nil
      }
    end
  end
end
