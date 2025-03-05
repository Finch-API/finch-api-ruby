# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::PayStatementsTest < FinchAPI::Test::ResourceTest
  def test_retrieve_many_required_params
    response = @finch.hris.pay_statements.retrieve_many(requests: [{payment_id: "string"}])

    assert_pattern do
      response => FinchAPI::ResponsesPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => FinchAPI::Models::HRIS::PayStatementResponse
    end

    assert_pattern do
      row => {
        body: FinchAPI::Models::HRIS::PayStatementResponseBody | nil,
        code: Integer | nil,
        payment_id: String | nil
      }
    end
  end
end
