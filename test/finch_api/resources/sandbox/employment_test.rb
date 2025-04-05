# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::Sandbox::EmploymentTest < FinchAPI::Test::ResourceTest
  def test_update
    response = @finch.sandbox.employment.update("individual_id")

    assert_pattern do
      response => FinchAPI::Models::Sandbox::EmploymentUpdateResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        class_code: String | nil,
        custom_fields: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Sandbox::EmploymentUpdateResponse::CustomField]) | nil,
        department: FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Department | nil,
        employment: FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Employment | nil,
        employment_status: FinchAPI::Models::Sandbox::EmploymentUpdateResponse::EmploymentStatus | nil,
        end_date: String | nil,
        first_name: String | nil,
        income: FinchAPI::Models::Income | nil,
        income_history: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Income, nil?: true]) | nil,
        is_active: FinchAPI::Internal::Type::Boolean | nil,
        last_name: String | nil,
        latest_rehire_date: String | nil,
        location: FinchAPI::Models::Location | nil,
        manager: FinchAPI::Models::Sandbox::EmploymentUpdateResponse::Manager | nil,
        middle_name: String | nil,
        source_id: String | nil,
        start_date: String | nil,
        title: String | nil
      }
    end
  end
end
