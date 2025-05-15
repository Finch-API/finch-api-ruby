# frozen_string_literal: true

require_relative "../../../test_helper"

class FinchAPI::Test::Resources::HRIS::Company::PayStatementItemTest < FinchAPI::Test::ResourceTest
  def test_list
    response = @finch.hris.company.pay_statement_item.list

    assert_pattern do
      response => FinchAPI::Internal::ResponsesPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::Models::HRIS::Company::PayStatementItemListResponse
    end

    assert_pattern do
      row => {
        attributes: FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Attributes,
        category: FinchAPI::Models::HRIS::Company::PayStatementItemListResponse::Category,
        name: String
      }
    end
  end
end
