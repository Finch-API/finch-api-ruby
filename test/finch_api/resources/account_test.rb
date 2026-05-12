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

  def test_disconnect_entity_required_params
    response =
      @finch.account.disconnect_entity(
        entity_ids: %w[3c90c3cc-0d44-4b50-8888-8dd25736052a 5e6f7a8b-9c10-4d11-a12b-c13d14e15f16]
      )

    assert_pattern do
      response => FinchAPI::DisconnectEntityResponse
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
        entities: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Introspection::Entity]) | nil,
        manual: FinchAPI::Internal::Type::Boolean | nil,
        payroll_provider_id: String | nil,
        username: String | nil
      }
    end
  end
end
