# frozen_string_literal: true

require_relative "../../test_helper"

class FinchAPI::Test::Resources::HRIS::DocumentsTest < FinchAPI::Test::ResourceTest
  def test_list_required_params
    response = @finch.hris.documents.list(entity_ids: ["550e8400-e29b-41d4-a716-446655440000"])

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

  def test_retreive_required_params
    response =
      @finch.hris.documents.retreive("document_id", entity_ids: ["550e8400-e29b-41d4-a716-446655440000"])

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
      in {type: :w4_2020, data: FinchAPI::HRIS::W42020::Data, year: Float}
      in {type: :w4_2005, data: FinchAPI::HRIS::W42005::Data, year: Float}
      end
    end
  end
end
