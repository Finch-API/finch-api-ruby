# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module PayStatementItem
        # @see FinchAPI::Resources::HRIS::PayStatementItem::Rules#list
        class RuleListParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          # @!attribute entity_ids
          #   The entity IDs to retrieve rules for. Provide exactly one entity ID per request;
          #   a maximum of one is accepted.
          #
          #   @return [Array<String>, nil]
          optional :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

          # @!method initialize(entity_ids: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {FinchAPI::Models::HRIS::PayStatementItem::RuleListParams} for more details.
          #
          #   @param entity_ids [Array<String>] The entity IDs to retrieve rules for. Provide exactly one entity ID per request;
          #
          #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
