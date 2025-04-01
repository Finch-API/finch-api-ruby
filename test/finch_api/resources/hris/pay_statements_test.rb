# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::PayStatementsTest < FinchAPI::Test::ResourceTest
  def test_retrieve_many_required_params
    response =
      @finch.hris.pay_statements.retrieve_many(requests: [{payment_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"}])

    assert_pattern do
      response => FinchAPI::ResponsesPage
    end

    row = response.to_enum.first
    return if row.nil?

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
