# frozen_string_literal: true

require_relative "../test_helper"

class FinchAPI::Test::Resources::RequestForwardingTest < FinchAPI::Test::ResourceTest
  def test_forward_required_params
    response = @finch.request_forwarding.forward(method_: "POST", route: "/people/search")

    assert_pattern do
      response => FinchAPI::Models::RequestForwardingForwardResponse
    end

    assert_pattern do
      response => {
        data: String | nil,
        headers: FinchAPI::Unknown | nil,
        request: FinchAPI::Models::RequestForwardingForwardResponse::Request,
        status_code: Integer
      }
    end
  end
end
