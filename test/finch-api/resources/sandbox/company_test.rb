# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::Sandbox::CompanyTest < FinchAPI::Test::ResourceTest
  def test_update_required_params
    response =
      @finch.sandbox.company.update(
        accounts: [{}],
        departments: [{}],
        ein: "ein",
        entity: {},
        legal_name: "legal_name",
        locations: [{}],
        primary_email: "primary_email",
        primary_phone_number: "primary_phone_number"
      )

    assert_pattern do
      response => FinchAPI::Models::Sandbox::CompanyUpdateResponse
    end

    assert_pattern do
      response => {
        accounts: ^(FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::CompanyUpdateResponse::Account]) | nil,
        departments: ^(FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::CompanyUpdateResponse::Department, nil?: true]) | nil,
        ein: String | nil,
        entity: FinchAPI::Models::Sandbox::CompanyUpdateResponse::Entity | nil,
        legal_name: String | nil,
        locations: ^(FinchAPI::ArrayOf[FinchAPI::Models::Location, nil?: true]) | nil,
        primary_email: String | nil,
        primary_phone_number: String | nil
      }
    end
  end
end
