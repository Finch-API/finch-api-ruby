# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::Sandbox::DirectoryTest < FinchAPI::Test::ResourceTest
  def test_create
    response = @finch.sandbox.directory.create

    assert_pattern do
      response => ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Internal::Type::Unknown])
    end
  end
end
