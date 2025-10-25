# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::DirectoryTest < FinchAPI::Test::ResourceTest
  def test_list_required_params
    response = @finch.hris.directory.list(entity_ids: ["550e8400-e29b-41d4-a716-446655440000"])

    assert_pattern do
      response => FinchAPI::Internal::IndividualsPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::HRIS::IndividualInDirectory
    end

    assert_pattern do
      row => {
        id: String,
        department: FinchAPI::HRIS::IndividualInDirectory::Department | nil,
        first_name: String | nil,
        is_active: FinchAPI::Internal::Type::Boolean | nil,
        last_name: String | nil,
        manager: FinchAPI::HRIS::IndividualInDirectory::Manager | nil,
        middle_name: String | nil
      }
    end
  end

  def test_list_individuals_required_params
    response = @finch.hris.directory.list_individuals(entity_ids: ["550e8400-e29b-41d4-a716-446655440000"])

    assert_pattern do
      response => FinchAPI::Internal::IndividualsPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::HRIS::IndividualInDirectory
    end

    assert_pattern do
      row => {
        id: String,
        department: FinchAPI::HRIS::IndividualInDirectory::Department | nil,
        first_name: String | nil,
        is_active: FinchAPI::Internal::Type::Boolean | nil,
        last_name: String | nil,
        manager: FinchAPI::HRIS::IndividualInDirectory::Manager | nil,
        middle_name: String | nil
      }
    end
  end
end
