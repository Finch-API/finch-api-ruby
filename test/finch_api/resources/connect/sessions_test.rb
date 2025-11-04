# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::Connect::SessionsTest < FinchAPI::Test::ResourceTest
  def test_new_required_params
    skip("prism tests are broken")

    response = @finch.connect.sessions.new(customer_id: "x", customer_name: "x", products: [:benefits])

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

    response = @finch.connect.sessions.reauthenticate(connection_id: "connection_id")

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
