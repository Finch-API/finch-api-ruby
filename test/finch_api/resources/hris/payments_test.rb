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
      row => FinchAPI::HRIS::Payment
    end

    assert_pattern do
      row => {
        id: String,
        company_debit: FinchAPI::Money | nil,
        debit_date: String | nil,
        employee_taxes: FinchAPI::Money | nil,
        employer_taxes: FinchAPI::Money | nil,
        gross_pay: FinchAPI::Money | nil,
        individual_ids: ^(FinchAPI::Internal::Type::ArrayOf[String]) | nil,
        net_pay: FinchAPI::Money | nil,
        pay_date: String | nil,
        pay_frequencies: ^(FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::HRIS::Payment::PayFrequency]) | nil,
        pay_group_ids: ^(FinchAPI::Internal::Type::ArrayOf[String]) | nil,
        pay_period: FinchAPI::HRIS::Payment::PayPeriod | nil
      }
    end
  end
end
