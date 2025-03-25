# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::IndividualsTest < FinchAPI::Test::ResourceTest
  def test_retrieve_many
    response = @finch.hris.individuals.retrieve_many

    assert_pattern do
      response => FinchAPI::ResponsesPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::Models::HRIS::IndividualResponse
    end

    assert_pattern do
      row => {
        body: FinchAPI::Models::HRIS::Individual | nil,
        code: Integer | nil,
        individual_id: String | nil
      }
    end
  end
end
