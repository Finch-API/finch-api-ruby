# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Company
        module PayStatementItem
          # @see FinchAPI::Resources::HRIS::Company::PayStatementItem::Rules#create
          class RuleCreateParams < FinchAPI::Internal::Type::BaseModel
            extend FinchAPI::Internal::Type::RequestParameters::Converter
            include FinchAPI::Internal::Type::RequestParameters

            # @!attribute entity_ids
            #   The entity IDs to create the rule for.
            #
            #   @return [Array<String>, nil]
            optional :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

            # @!attribute attributes
            #   Specifies the fields to be applied when the condition is met.
            #
            #   @return [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Attributes, nil]
            optional :attributes, -> { FinchAPI::HRIS::Company::PayStatementItem::RuleCreateParams::Attributes }

            # @!attribute conditions
            #
            #   @return [Array<FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition>, nil]
            optional :conditions,
                     -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::Company::PayStatementItem::RuleCreateParams::Condition] }

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
            #   @return [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::EntityType, nil]
            optional :entity_type,
                     enum: -> { FinchAPI::HRIS::Company::PayStatementItem::RuleCreateParams::EntityType }

            # @!method initialize(entity_ids: nil, attributes: nil, conditions: nil, effective_end_date: nil, effective_start_date: nil, entity_type: nil, request_options: {})
            #   @param entity_ids [Array<String>] The entity IDs to create the rule for.
            #
            #   @param attributes [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Attributes] Specifies the fields to be applied when the condition is met.
            #
            #   @param conditions [Array<FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition>]
            #
            #   @param effective_end_date [String, nil] Specifies when the rules should stop applying rules based on the date.
            #
            #   @param effective_start_date [String, nil] Specifies when the rule should begin applying based on the date.
            #
            #   @param entity_type [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::EntityType] The entity type to which the rule is applied.
            #
            #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

            class Attributes < FinchAPI::Internal::Type::BaseModel
              # @!attribute metadata
              #   The metadata to be attached in the entity. It is a key-value pairs where the
              #   values can be of any type (string, number, boolean, object, array, etc.).
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :metadata, FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown]

              # @!method initialize(metadata: nil)
              #   Some parameter documentations has been truncated, see
              #   {FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Attributes}
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
              #   @return [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition::Operator, nil]
              optional :operator,
                       enum: -> { FinchAPI::HRIS::Company::PayStatementItem::RuleCreateParams::Condition::Operator }

              # @!attribute value
              #   The value of the field to be checked in the rule.
              #
              #   @return [String, nil]
              optional :value, String

              # @!method initialize(field: nil, operator: nil, value: nil)
              #   @param field [String] The field to be checked in the rule.
              #
              #   @param operator [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition::Operator] The operator to be used in the rule.
              #
              #   @param value [String] The value of the field to be checked in the rule.

              # The operator to be used in the rule.
              #
              # @see FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition#operator
              module Operator
                extend FinchAPI::Internal::Type::Enum

                EQUALS = :equals

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # The entity type to which the rule is applied.
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
