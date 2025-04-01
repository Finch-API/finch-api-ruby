# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::Sandbox::IndividualTest < FinchAPI::Test::ResourceTest
  def test_update
    response = @finch.sandbox.individual.update("individual_id")

    assert_pattern do
      response => FinchAPI::Models::Sandbox::IndividualUpdateResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        dob: String | nil,
        emails: ^(FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::IndividualUpdateResponse::Email]) | nil,
        encrypted_ssn: String | nil,
        ethnicity: FinchAPI::Models::Sandbox::IndividualUpdateResponse::Ethnicity | nil,
        first_name: String | nil,
        gender: FinchAPI::Models::Sandbox::IndividualUpdateResponse::Gender | nil,
        last_name: String | nil,
        middle_name: String | nil,
        phone_numbers: ^(FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::IndividualUpdateResponse::PhoneNumber, nil?: true]) | nil,
        preferred_name: String | nil,
        residence: FinchAPI::Models::Location | nil,
        ssn: String | nil
      }
    end
  end
end
