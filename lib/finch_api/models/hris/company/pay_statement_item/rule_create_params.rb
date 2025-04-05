# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Company
        module PayStatementItem
          # @see FinchAPI::Resources::HRIS::Company::PayStatementItem::Rules#create
          class RuleCreateParams < FinchAPI::Internal::Type::BaseModel
            # @!parse
            #   extend FinchAPI::Internal::Type::RequestParameters::Converter
            include FinchAPI::Internal::Type::RequestParameters

            # @!attribute [r] attributes
            #   Specifies the fields to be applied when the condition is met.
            #
            #   @return [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Attributes, nil]
            optional :attributes,
                     -> { FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Attributes }

            # @!parse
            #   # @return [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Attributes]
            #   attr_writer :attributes

            # @!attribute [r] conditions
            #
            #   @return [Array<FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition>, nil]
            optional :conditions,
                     -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition] }

            # @!parse
            #   # @return [Array<FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition>]
            #   attr_writer :conditions

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
            #   @return [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::EntityType, nil]
            optional :entity_type,
                     enum: -> { FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::EntityType }

            # @!parse
            #   # @return [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::EntityType]
            #   attr_writer :entity_type

            # @!parse
            #   # @param attributes [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Attributes]
            #   # @param conditions [Array<FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition>]
            #   # @param effective_end_date [String, nil]
            #   # @param effective_start_date [String, nil]
            #   # @param entity_type [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::EntityType]
            #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
            #   #
            #   def initialize(
            #     attributes: nil,
            #     conditions: nil,
            #     effective_end_date: nil,
            #     effective_start_date: nil,
            #     entity_type: nil,
            #     request_options: {},
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

            class Attributes < FinchAPI::Internal::Type::BaseModel
              # @!attribute [r] metadata
              #   The metadata to be attached in the entity. It is a key-value pairs where the
              #   values can be of any type (string, number, boolean, object, array, etc.).
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
              #   @return [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition::Operator, nil]
              optional :operator,
                       enum: -> { FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition::Operator }

              # @!parse
              #   # @return [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition::Operator]
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
              #   # @param operator [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition::Operator]
              #   # @param value [String]
              #   #
              #   def initialize(field: nil, operator: nil, value: nil, **) = super

              # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

              # The operator to be used in the rule.
              #
              # @see FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition#operator
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
