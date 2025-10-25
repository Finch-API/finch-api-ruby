# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::IndividualsTest < FinchAPI::Test::ResourceTest
  def test_retrieve_many_required_params
    response = @finch.hris.individuals.retrieve_many(entity_ids: ["550e8400-e29b-41d4-a716-446655440000"])

    assert_pattern do
      response => FinchAPI::Internal::ResponsesPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::HRIS::IndividualResponse
    end

    assert_pattern do
      row => {
        body: FinchAPI::HRIS::Individual,
        code: Integer,
        individual_id: String
      }
    end
  end
end
