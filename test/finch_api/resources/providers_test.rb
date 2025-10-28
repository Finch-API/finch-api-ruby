# frozen_string_literal: true

require_relative "../test_helper"

class FinchAPI::Test::Resources::ProvidersTest < FinchAPI::Test::ResourceTest
  def test_list
    response = @finch.providers.list

    assert_pattern do
      response => FinchAPI::Internal::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::Models::ProviderListResponse
    end

    assert_pattern do
      row => {
        id: String,
        display_name: String,
        products: ^(FinchAPI::Internal::Type::ArrayOf[String]),
        authentication_methods: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::ProviderListResponse::AuthenticationMethod]) | nil,
        beta: FinchAPI::Internal::Type::Boolean | nil,
        icon: String | nil,
        logo: String | nil,
        manual: FinchAPI::Internal::Type::Boolean | nil,
        mfa_required: FinchAPI::Internal::Type::Boolean | nil,
        primary_color: String | nil
      }
    end
  end
end
