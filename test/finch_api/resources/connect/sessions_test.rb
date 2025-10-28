# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::Connect::SessionsTest < FinchAPI::Test::ResourceTest
  def test_new_required_params
    skip("prism tests are broken")

    response =
      @finch.connect.sessions.new(
        customer_email: "dev@stainless.com",
        customer_id: "x",
        customer_name: "x",
        integration: {auth_method: :assisted, provider: "provider"},
        manual: true,
        minutes_to_expire: 1,
        products: [:benefits],
        redirect_uri: "redirect_uri",
        sandbox: :finch
      )

    assert_pattern do
      response => FinchAPI::Models::Connect::SessionNewResponse
    end

    assert_pattern do
      response => {
        connect_url: String,
        session_id: String
      }
    end
  end

  def test_reauthenticate_required_params
    skip("prism tests are broken")

    response =
      @finch.connect.sessions.reauthenticate(
        connection_id: "connection_id",
        minutes_to_expire: 0,
        products: [:benefits],
        redirect_uri: "https://example.com"
      )

    assert_pattern do
      response => FinchAPI::Models::Connect::SessionReauthenticateResponse
    end

    assert_pattern do
      response => {
        connect_url: String,
        session_id: String
      }
    end
  end
end
