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
      row => FinchAPI::Models::Provider
    end

    assert_pattern do
      row => {
        id: String | nil,
        authentication_methods: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Provider::AuthenticationMethod]) | nil,
        beta: FinchAPI::Internal::Type::BooleanModel | nil,
        display_name: String | nil,
        icon: String | nil,
        logo: String | nil,
        manual: FinchAPI::Internal::Type::BooleanModel | nil,
        mfa_required: FinchAPI::Internal::Type::BooleanModel | nil,
        primary_color: String | nil,
        products: ^(FinchAPI::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
