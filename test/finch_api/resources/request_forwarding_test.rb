# frozen_string_literal: true

require_relative "../test_helper"

class FinchAPI::Test::Resources::RequestForwardingTest < FinchAPI::Test::ResourceTest
  def test_forward_required_params
    response = @finch.request_forwarding.forward(method_: "method", route: "route")

    assert_pattern do
      response => FinchAPI::Models::RequestForwardingForwardResponse
    end

    assert_pattern do
      response => {
        request: FinchAPI::Models::RequestForwardingForwardResponse::Request,
        status_code: Integer,
        data: String | nil,
        headers: ^(FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown, nil?: true]) | nil
      }
    end
  end
end
