# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::EmploymentsTest < FinchAPI::Test::ResourceTest
  def test_retrieve_many_required_params
    response =
      @finch.hris.employments.retrieve_many(
        entity_ids: ["550e8400-e29b-41d4-a716-446655440000"],
        requests: [{individual_id: "individual_id"}]
      )

    assert_pattern do
      response => FinchAPI::Internal::ResponsesPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::HRIS::EmploymentDataResponse
    end

    assert_pattern do
      row => {
        body: FinchAPI::HRIS::EmploymentData,
        code: Integer,
        individual_id: String
      }
    end
  end
end
