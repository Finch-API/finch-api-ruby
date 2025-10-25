# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::CompanyTest < FinchAPI::Test::ResourceTest
  def test_retrieve_required_params
    response = @finch.hris.company.retrieve(entity_ids: ["550e8400-e29b-41d4-a716-446655440000"])

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
