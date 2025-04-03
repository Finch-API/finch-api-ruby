# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::PaymentsTest < FinchAPI::Test::ResourceTest
  def test_list_required_params
    response = @finch.hris.payments.list(end_date: "2021-01-01", start_date: "2021-01-01")

    assert_pattern do
      response => FinchAPI::Internal::SinglePage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::Models::HRIS::Payment
    end

    assert_pattern do
      row => {
        id: String | nil,
        company_debit: FinchAPI::Models::Money | nil,
        debit_date: String | nil,
        employee_taxes: FinchAPI::Models::Money | nil,
        employer_taxes: FinchAPI::Models::Money | nil,
        gross_pay: FinchAPI::Models::Money | nil,
        individual_ids: ^(FinchAPI::ArrayOf[String]) | nil,
        net_pay: FinchAPI::Models::Money | nil,
        pay_date: String | nil,
        pay_frequencies: ^(FinchAPI::ArrayOf[enum: FinchAPI::Models::HRIS::Payment::PayFrequency]) | nil,
        pay_group_ids: ^(FinchAPI::ArrayOf[String]) | nil,
        pay_period: FinchAPI::Models::HRIS::Payment::PayPeriod | nil
      }
    end
  end
end
