# frozen_string_literal: true

require_relative "../../../../test_helper"

class FinchAPI::Test::Resources::HRIS::Company::PayStatementItem::RulesTest < FinchAPI::Test::ResourceTest
  def test_create_required_params
    response =
      @finch.hris.company.pay_statement_item.rules.create(entity_ids: ["550e8400-e29b-41d4-a716-446655440000"])

    assert_pattern do
      response => FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        attributes: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateResponse::Attributes | nil,
        conditions: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateResponse::Condition]) | nil,
        created_at: Time | nil,
        effective_end_date: String | nil,
        effective_start_date: String | nil,
        entity_type: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateResponse::EntityType | nil,
        priority: Integer | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_update_required_params
    response =
      @finch.hris.company.pay_statement_item.rules.update(
        "rule_id",
        entity_ids: ["550e8400-e29b-41d4-a716-446655440000"]
      )

    assert_pattern do
      response => FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        attributes: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Attributes | nil,
        conditions: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Condition]) | nil,
        created_at: Time | nil,
        effective_end_date: String | nil,
        effective_start_date: String | nil,
        entity_type: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::EntityType | nil,
        priority: Integer | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list_required_params
    response =
      @finch.hris.company.pay_statement_item.rules.list(entity_ids: ["550e8400-e29b-41d4-a716-446655440000"])

    assert_pattern do
      response => FinchAPI::Internal::ResponsesPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        attributes: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::Attributes | nil,
        conditions: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::Condition]) | nil,
        created_at: Time | nil,
        effective_end_date: String | nil,
        effective_start_date: String | nil,
        entity_type: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::EntityType | nil,
        priority: Integer | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    response =
      @finch.hris.company.pay_statement_item.rules.delete(
        "rule_id",
        entity_ids: ["550e8400-e29b-41d4-a716-446655440000"]
      )

    assert_pattern do
      response => FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        attributes: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::Attributes | nil,
        conditions: ^(FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::Condition]) | nil,
        created_at: Time | nil,
        deleted_at: Time | nil,
        effective_end_date: String | nil,
        effective_start_date: String | nil,
        entity_type: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::EntityType | nil,
        priority: Integer | nil,
        updated_at: Time | nil
      }
    end
  end
end
