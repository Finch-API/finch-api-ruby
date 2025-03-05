# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::DocumentsTest < FinchAPI::Test::ResourceTest
  def test_list
    response = @finch.hris.documents.list

    assert_pattern do
      response => FinchAPI::Models::HRIS::DocumentListResponse
    end

    assert_pattern do
      response => {
        documents: ^(FinchAPI::ArrayOf[FinchAPI::Models::HRIS::DocumentResponse]),
        paging: FinchAPI::Models::Paging
      }
    end
  end

  def test_retreive
    response = @finch.hris.documents.retreive("document_id")

    assert_pattern do
      response => FinchAPI::Models::HRIS::DocumentRetreiveResponse
    end
  end
end
