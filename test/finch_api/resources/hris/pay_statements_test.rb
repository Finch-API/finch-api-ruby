# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::PayStatementsTest < FinchAPI::Test::ResourceTest
  def test_retrieve_many_required_params
    response =
      @finch.hris.pay_statements.retrieve_many(requests: [{payment_id: "fc8b024e-d373-4c9c-80fc-f1625383d142"}])

    assert_pattern do
      response => FinchAPI::Internal::ResponsesPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::HRIS::PayStatementResponse
    end

    assert_pattern do
      row => {
        body: FinchAPI::HRIS::PayStatementResponse::Body,
        code: Integer,
        payment_id: String
      }
    end
  end
end
