# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::DirectoryTest < FinchAPI::Test::ResourceTest
  def test_list
    response = @finch.hris.directory.list

    assert_pattern do
      response => FinchAPI::IndividualsPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => FinchAPI::Models::HRIS::IndividualInDirectory
    end

    assert_pattern do
      row => {
        id: String | nil,
        department: FinchAPI::Models::HRIS::IndividualInDirectory::Department | nil,
        first_name: String | nil,
        is_active: FinchAPI::BooleanModel | nil,
        last_name: String | nil,
        manager: FinchAPI::Models::HRIS::IndividualInDirectory::Manager | nil,
        middle_name: String | nil
      }
    end
  end

  def test_list_individuals
    response = @finch.hris.directory.list_individuals

    assert_pattern do
      response => FinchAPI::IndividualsPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => FinchAPI::Models::HRIS::IndividualInDirectory
    end

    assert_pattern do
      row => {
        id: String | nil,
        department: FinchAPI::Models::HRIS::IndividualInDirectory::Department | nil,
        first_name: String | nil,
        is_active: FinchAPI::BooleanModel | nil,
        last_name: String | nil,
        manager: FinchAPI::Models::HRIS::IndividualInDirectory::Manager | nil,
        middle_name: String | nil
      }
    end
  end
end
