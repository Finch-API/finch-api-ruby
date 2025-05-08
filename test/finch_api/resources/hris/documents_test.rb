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
        documents: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::DocumentResponse]),
        paging: FinchAPI::Paging
      }
    end
  end

  def test_retreive
    response = @finch.hris.documents.retreive("document_id")

    assert_pattern do
      response => FinchAPI::Models::HRIS::DocumentRetreiveResponse
    end

    assert_pattern do
      case response
      in FinchAPI::HRIS::W42020
      in FinchAPI::HRIS::W42005
      end
    end

    assert_pattern do
      case response
      in {type: :w4_2020, data: FinchAPI::HRIS::W42020::Data | nil, year: Float | nil}
      in {type: :w4_2005, data: FinchAPI::HRIS::W42005::Data | nil, year: Float | nil}
      end
    end
  end
end
