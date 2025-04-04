# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Company
        module PayStatementItem
          # @see FinchAPI::Resources::HRIS::Company::PayStatementItem::Rules#delete
          class RuleDeleteResponse < FinchAPI::Internal::Type::BaseModel
            # @!attribute [r] id
            #   Finch id (uuidv4) for the rule.
            #
            #   @return [String, nil]
            optional :id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :id

            # @!attribute [r] attributes
            #   Specifies the fields to be applied when the condition is met.
            #
            #   @return [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::Attributes, nil]
            optional :attributes,
                     -> { FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::Attributes }

            # @!parse
            #   # @return [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::Attributes]
            #   attr_writer :attributes

            # @!attribute [r] conditions
            #
            #   @return [Array<FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::Condition>, nil]
            optional :conditions,
                     -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::Condition] }

            # @!parse
            #   # @return [Array<FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::Condition>]
            #   attr_writer :conditions

            # @!attribute [r] created_at
            #   The datetime when the rule was created.
            #
            #   @return [Time, nil]
            optional :created_at, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :created_at

            # @!attribute [r] deleted_at
            #   The datetime when the rule was deleted.
            #
            #   @return [Time, nil]
            optional :deleted_at, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :deleted_at

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

            # @!attribute [r] entity_type
            #   The entity type to which the rule is applied.
            #
            #   @return [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::EntityType, nil]
            optional :entity_type,
                     enum: -> { FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::EntityType }

            # @!parse
            #   # @return [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::EntityType]
            #   attr_writer :entity_type

            # @!attribute [r] priority
            #   The priority of the rule.
            #
            #   @return [Integer, nil]
            optional :priority, Integer

            # @!parse
            #   # @return [Integer]
            #   attr_writer :priority

            # @!attribute [r] updated_at
            #   The datetime when the rule was last updated.
            #
            #   @return [Time, nil]
            optional :updated_at, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :updated_at

            # @!parse
            #   # @param id [String]
            #   # @param attributes [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::Attributes]
            #   # @param conditions [Array<FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::Condition>]
            #   # @param created_at [Time]
            #   # @param deleted_at [Time]
            #   # @param effective_end_date [String, nil]
            #   # @param effective_start_date [String, nil]
            #   # @param entity_type [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::EntityType]
            #   # @param priority [Integer]
            #   # @param updated_at [Time]
            #   #
            #   def initialize(
            #     id: nil,
            #     attributes: nil,
            #     conditions: nil,
            #     created_at: nil,
            #     deleted_at: nil,
            #     effective_end_date: nil,
            #     effective_start_date: nil,
            #     entity_type: nil,
            #     priority: nil,
            #     updated_at: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

            # @see FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse#attributes
            class Attributes < FinchAPI::Internal::Type::BaseModel
              # @!attribute [r] metadata
              #   The metadata to be attached in the entity. It is a key-value pairs where the
              #     values can be of any type (string, number, boolean, object, array, etc.).
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :metadata, FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown]

              # @!parse
              #   # @return [Hash{Symbol=>Object}]
              #   attr_writer :metadata

              # @!parse
              #   # Specifies the fields to be applied when the condition is met.
              #   #
              #   # @param metadata [Hash{Symbol=>Object}]
              #   #
              #   def initialize(metadata: nil, **) = super

              # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
            end

            class Condition < FinchAPI::Internal::Type::BaseModel
              # @!attribute [r] field
              #   The field to be checked in the rule.
              #
              #   @return [String, nil]
              optional :field, String

              # @!parse
              #   # @return [String]
              #   attr_writer :field

              # @!attribute [r] operator
              #   The operator to be used in the rule.
              #
              #   @return [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::Condition::Operator, nil]
              optional :operator,
                       enum: -> { FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::Condition::Operator }

              # @!parse
              #   # @return [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::Condition::Operator]
              #   attr_writer :operator

              # @!attribute [r] value
              #   The value of the field to be checked in the rule.
              #
              #   @return [String, nil]
              optional :value, String

              # @!parse
              #   # @return [String]
              #   attr_writer :value

              # @!parse
              #   # @param field [String]
              #   # @param operator [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::Condition::Operator]
              #   # @param value [String]
              #   #
              #   def initialize(field: nil, operator: nil, value: nil, **) = super

              # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

              # The operator to be used in the rule.
              #
              # @see FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse::Condition#operator
              module Operator
                extend FinchAPI::Internal::Type::Enum

                EQUALS = :equals

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # The entity type to which the rule is applied.
            #
            # @see FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse#entity_type
            module EntityType
              extend FinchAPI::Internal::Type::Enum

              PAY_STATEMENT_ITEM = :pay_statement_item

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end
          end
        end
      end
    end
  end
end
