# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::CompanyTest < FinchAPI::Test::ResourceTest
  def test_retrieve
    response = @finch.hris.company.retrieve

    assert_pattern do
      response => FinchAPI::HRIS::HRISCompany
    end

    assert_pattern do
      response => {
        id: String,
        accounts: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::HRISCompany::Account]) | nil,
        departments: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::HRISCompany::Department,
                                                         nil?: true]) | nil,
        ein: String | nil,
        entity: FinchAPI::HRIS::HRISCompany::Entity | nil,
        legal_name: String | nil,
        locations: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Location, nil?: true]) | nil,
        primary_email: String | nil,
        primary_phone_number: String | nil
      }
    end
  end
end
