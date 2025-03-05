# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::CompanyTest < FinchAPI::Test::ResourceTest
  def test_retrieve
    response = @finch.hris.company.retrieve

    assert_pattern do
      response => FinchAPI::Models::HRIS::HRISCompany
    end

    assert_pattern do
      response => {
        id: String,
        accounts: ^(FinchAPI::ArrayOf[FinchAPI::Models::HRIS::HRISCompany::Account]) | nil,
        departments: ^(FinchAPI::ArrayOf[FinchAPI::Models::HRIS::HRISCompany::Department, nil?: true]) | nil,
        ein: String | nil,
        entity: FinchAPI::Models::HRIS::HRISCompany::Entity | nil,
        legal_name: String | nil,
        locations: ^(FinchAPI::ArrayOf[FinchAPI::Models::Location, nil?: true]) | nil,
        primary_email: String | nil,
        primary_phone_number: String | nil
      }
    end
  end
end
