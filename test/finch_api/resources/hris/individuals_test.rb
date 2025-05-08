# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::IndividualsTest < FinchAPI::Test::ResourceTest
  def test_retrieve_many
    response = @finch.hris.individuals.retrieve_many

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
