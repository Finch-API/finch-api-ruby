# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::Payroll::PayGroupsTest < FinchAPI::Test::ResourceTest
  def test_retrieve
    response = @finch.payroll.pay_groups.retrieve("pay_group_id")

    assert_pattern do
      response => FinchAPI::Models::Payroll::PayGroupRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        individual_ids: ^(FinchAPI::ArrayOf[String]),
        name: String,
        pay_frequencies: ^(FinchAPI::ArrayOf[enum: FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency])
      }
    end
  end

  def test_list
    response = @finch.payroll.pay_groups.list

    assert_pattern do
      response => FinchAPI::Internal::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::Models::Payroll::PayGroupListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        name: String | nil,
        pay_frequencies: ^(FinchAPI::ArrayOf[enum: FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency]) | nil
      }
    end
  end
end
