# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module PayStatementItem
        # @see FinchAPI::Resources::HRIS::PayStatementItem::Rules#update
        class RuleUpdateParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # @!attribute rule_id
          #
          #   @return [String]
          required :rule_id, String

          # @!attribute entity_ids
          #   The entity IDs to update the rule for.
          #
          #   @return [Array<String>, nil]
          optional :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

          # @!attribute optional_property
          #
          #   @return [Object, nil]
          optional :optional_property, FinchAPI::Internal::Type::Unknown, api_name: :optionalProperty

          # @!method initialize(rule_id:, entity_ids: nil, optional_property: nil, request_options: {})
          #   @param rule_id [String]
          #
          #   @param entity_ids [Array<String>] The entity IDs to update the rule for.
          #
          #   @param optional_property [Object]
          #
          #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
