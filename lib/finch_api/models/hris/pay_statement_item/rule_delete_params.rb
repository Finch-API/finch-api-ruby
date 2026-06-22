# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module PayStatementItem
        # @see FinchAPI::Resources::HRIS::PayStatementItem::Rules#delete
        class RuleDeleteParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # @!attribute rule_id
          #
          #   @return [String]
          required :rule_id, String

          # @!attribute entity_ids
          #   The entity IDs to delete the rule for.
          #
          #   @return [Array<String>, nil]
          optional :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

          # @!method initialize(rule_id:, entity_ids: nil, request_options: {})
          #   @param rule_id [String]
          #
          #   @param entity_ids [Array<String>] The entity IDs to delete the rule for.
          #
          #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
