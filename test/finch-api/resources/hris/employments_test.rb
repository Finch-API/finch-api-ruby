# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::EmploymentsTest < FinchAPI::Test::ResourceTest
  def test_retrieve_many_required_params
    response = @finch.hris.employments.retrieve_many(requests: [{individual_id: "individual_id"}])

    assert_pattern do
      response => FinchAPI::ResponsesPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::Models::HRIS::EmploymentDataResponse
    end

    assert_pattern do
      row => {
        body: FinchAPI::Models::HRIS::EmploymentData | nil,
        code: Integer | nil,
        individual_id: String | nil
      }
    end
  end
end
