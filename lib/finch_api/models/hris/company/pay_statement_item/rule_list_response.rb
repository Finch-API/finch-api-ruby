# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Company
        module PayStatementItem
          # @see FinchAPI::Resources::HRIS::Company::PayStatementItem::Rules#list
          class RuleListResponse < FinchAPI::Internal::Type::BaseModel
            # @!attribute id
            #   Finch id (uuidv4) for the rule.
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute attributes
            #   Specifies the fields to be applied when the condition is met.
            #
            #   @return [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::Attributes, nil]
            optional :attributes,
                     -> { FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::Attributes }

            # @!attribute conditions
            #
            #   @return [Array<FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::Condition>, nil]
            optional :conditions,
                     -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::Condition] }

            # @!attribute created_at
            #   The datetime when the rule was created.
            #
            #   @return [Time, nil]
            optional :created_at, Time

            # @!attribute effective_end_date
            #   Specifies when the rules should stop applying rules based on the date.
            #
            #   @return [String, nil]
            optional :effective_end_date, String, nil?: true

            # @!attribute effective_start_date
            #   Specifies when the rule should begin applying based on the date.
            #
            #   @return [String, nil]
            optional :effective_start_date, String, nil?: true

            # @!attribute entity_type
            #   The entity type to which the rule is applied.
            #
            #   @return [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::EntityType, nil]
            optional :entity_type,
                     enum: -> { FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::EntityType }

            # @!attribute priority
            #   The priority of the rule.
            #
            #   @return [Integer, nil]
            optional :priority, Integer

            # @!attribute updated_at
            #   The datetime when the rule was last updated.
            #
            #   @return [Time, nil]
            optional :updated_at, Time

            # @!method initialize(id: nil, attributes: nil, conditions: nil, created_at: nil, effective_end_date: nil, effective_start_date: nil, entity_type: nil, priority: nil, updated_at: nil)
            #   @param id [String] Finch id (uuidv4) for the rule.
            #
            #   @param attributes [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::Attributes] Specifies the fields to be applied when the condition is met.
            #
            #   @param conditions [Array<FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::Condition>]
            #
            #   @param created_at [Time] The datetime when the rule was created.
            #
            #   @param effective_end_date [String, nil] Specifies when the rules should stop applying rules based on the date.
            #
            #   @param effective_start_date [String, nil] Specifies when the rule should begin applying based on the date.
            #
            #   @param entity_type [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::EntityType] The entity type to which the rule is applied.
            #
            #   @param priority [Integer] The priority of the rule.
            #
            #   @param updated_at [Time] The datetime when the rule was last updated.

            # @see FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse#attributes
            class Attributes < FinchAPI::Internal::Type::BaseModel
              # @!attribute metadata
              #   The metadata to be attached in the entity. It is a key-value pairs where the
              #   values can be of any type (string, number, boolean, object, array, etc.).
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :metadata, FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown]

              # @!method initialize(metadata: nil)
              #   Some parameter documentations has been truncated, see
              #   {FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::Attributes}
              #   for more details.
              #
              #   Specifies the fields to be applied when the condition is met.
              #
              #   @param metadata [Hash{Symbol=>Object}] The metadata to be attached in the entity. It is a key-value pairs where the val
            end

            class Condition < FinchAPI::Internal::Type::BaseModel
              # @!attribute field
              #   The field to be checked in the rule.
              #
              #   @return [String, nil]
              optional :field, String

              # @!attribute operator
              #   The operator to be used in the rule.
              #
              #   @return [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::Condition::Operator, nil]
              optional :operator,
                       enum: -> { FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::Condition::Operator }

              # @!attribute value
              #   The value of the field to be checked in the rule.
              #
              #   @return [String, nil]
              optional :value, String

              # @!method initialize(field: nil, operator: nil, value: nil)
              #   @param field [String] The field to be checked in the rule.
              #
              #   @param operator [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::Condition::Operator] The operator to be used in the rule.
              #
              #   @param value [String] The value of the field to be checked in the rule.

              # The operator to be used in the rule.
              #
              # @see FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse::Condition#operator
              module Operator
                extend FinchAPI::Internal::Type::Enum

                EQUALS = :equals

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # The entity type to which the rule is applied.
            #
            # @see FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse#entity_type
            module EntityType
              extend FinchAPI::Internal::Type::Enum

              PAY_STATEMENT_ITEM = :pay_statement_item

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
