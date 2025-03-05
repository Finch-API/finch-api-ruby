# frozen_string_literal: true

require_relative "../test_helper"

class FinchAPI::Test::Resources::ProvidersTest < FinchAPI::Test::ResourceTest
  def test_list
    response = @finch.providers.list

    assert_pattern do
      response => FinchAPI::SinglePage
    end

    row = response.to_enum.first
    assert_pattern do
      row => FinchAPI::Models::Provider
    end

    assert_pattern do
      row => {
        id: String | nil,
        authentication_methods: ^(FinchAPI::ArrayOf[FinchAPI::Models::Provider::AuthenticationMethod]) | nil,
        beta: FinchAPI::BooleanModel | nil,
        display_name: String | nil,
        icon: String | nil,
        logo: String | nil,
        manual: FinchAPI::BooleanModel | nil,
        mfa_required: FinchAPI::BooleanModel | nil,
        primary_color: String | nil,
        products: ^(FinchAPI::ArrayOf[String]) | nil
      }
    end
  end
end
