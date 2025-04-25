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
        locations: [
          {
            city: "city",
            country: "country",
            line1: "line1",
            line2: "line2",
            postal_code: "postal_code",
            state: "state"
          }
        ],
        primary_email: "dev@stainless.com",
        primary_phone_number: "primary_phone_number"
      )

    assert_pattern do
      response => FinchAPI::Models::Sandbox::CompanyUpdateResponse
    end

    assert_pattern do
      response => {
        accounts: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Sandbox::CompanyUpdateResponse::Account]) | nil,
        departments: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Sandbox::CompanyUpdateResponse::Department, nil?: true]) | nil,
        ein: String | nil,
        entity: FinchAPI::Models::Sandbox::CompanyUpdateResponse::Entity | nil,
        legal_name: String | nil,
        locations: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::Location, nil?: true]) | nil,
        primary_email: String | nil,
        primary_phone_number: String | nil
      }
    end
  end
end
