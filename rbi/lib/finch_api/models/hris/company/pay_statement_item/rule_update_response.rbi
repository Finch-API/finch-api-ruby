# typed: strong

module FinchAPI
  module Models
    module HRIS
      module Company
        module PayStatementItem
          class RuleUpdateResponse < FinchAPI::Internal::Type::BaseModel
            # Finch id (uuidv4) for the rule.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # Specifies the fields to be applied when the condition is met.
            sig { returns(T.nilable(FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Attributes)) }
            attr_reader :attributes

            sig do
              params(
                attributes: T.any(
                  FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Attributes,
                  FinchAPI::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :attributes

            sig do
              returns(
                T.nilable(T::Array[FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Condition])
              )
            end
            attr_reader :conditions

            sig do
              params(
                conditions: T::Array[
                  T.any(
                    FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Condition,
                    FinchAPI::Internal::AnyHash
                  )
                ]
              )
                .void
            end
            attr_writer :conditions

            # The datetime when the rule was created.
            sig { returns(T.nilable(Time)) }
            attr_reader :created_at

            sig { params(created_at: Time).void }
            attr_writer :created_at

            # Specifies when the rules should stop applying rules based on the date.
            sig { returns(T.nilable(String)) }
            attr_accessor :effective_end_date

            # Specifies when the rule should begin applying based on the date.
            sig { returns(T.nilable(String)) }
            attr_accessor :effective_start_date

            # The entity type to which the rule is applied.
            sig do
              returns(
                T.nilable(FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::EntityType::TaggedSymbol)
              )
            end
            attr_reader :entity_type

            sig do
              params(
                entity_type: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::EntityType::OrSymbol
              )
                .void
            end
            attr_writer :entity_type

            # The priority of the rule.
            sig { returns(T.nilable(Integer)) }
            attr_reader :priority

            sig { params(priority: Integer).void }
            attr_writer :priority

            # The datetime when the rule was last updated.
            sig { returns(T.nilable(Time)) }
            attr_reader :updated_at

            sig { params(updated_at: Time).void }
            attr_writer :updated_at

            sig do
              params(
                id: String,
                attributes: T.any(
                  FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Attributes,
                  FinchAPI::Internal::AnyHash
                ),
                conditions: T::Array[
                  T.any(
                    FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Condition,
                    FinchAPI::Internal::AnyHash
                  )
                ],
                created_at: Time,
                effective_end_date: T.nilable(String),
                effective_start_date: T.nilable(String),
                entity_type: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::EntityType::OrSymbol,
                priority: Integer,
                updated_at: Time
              )
                .returns(T.attached_class)
            end
            def self.new(
              id: nil,
              attributes: nil,
              conditions: nil,
              created_at: nil,
              effective_end_date: nil,
              effective_start_date: nil,
              entity_type: nil,
              priority: nil,
              updated_at: nil
            ); end
            sig do
              override
                .returns(
                  {
                    id: String,
                    attributes: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Attributes,
                    conditions: T::Array[FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Condition],
                    created_at: Time,
                    effective_end_date: T.nilable(String),
                    effective_start_date: T.nilable(String),
                    entity_type: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::EntityType::TaggedSymbol,
                    priority: Integer,
                    updated_at: Time
                  }
                )
            end
            def to_hash; end

            class Attributes < FinchAPI::Internal::Type::BaseModel
              # The metadata to be attached in the entity. It is a key-value pairs where the
              # values can be of any type (string, number, boolean, object, array, etc.).
              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              attr_reader :metadata

              sig { params(metadata: T::Hash[Symbol, T.anything]).void }
              attr_writer :metadata

              # Specifies the fields to be applied when the condition is met.
              sig { params(metadata: T::Hash[Symbol, T.anything]).returns(T.attached_class) }
              def self.new(metadata: nil); end

              sig { override.returns({metadata: T::Hash[Symbol, T.anything]}) }
              def to_hash; end
            end

            class Condition < FinchAPI::Internal::Type::BaseModel
              # The field to be checked in the rule.
              sig { returns(T.nilable(String)) }
              attr_reader :field

              sig { params(field: String).void }
              attr_writer :field

              # The operator to be used in the rule.
              sig do
                returns(
                  T.nilable(
                    FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Condition::Operator::TaggedSymbol
                  )
                )
              end
              attr_reader :operator

              sig do
                params(
                  operator: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Condition::Operator::OrSymbol
                )
                  .void
              end
              attr_writer :operator

              # The value of the field to be checked in the rule.
              sig { returns(T.nilable(String)) }
              attr_reader :value

              sig { params(value: String).void }
              attr_writer :value

              sig do
                params(
                  field: String,
                  operator: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Condition::Operator::OrSymbol,
                  value: String
                )
                  .returns(T.attached_class)
              end
              def self.new(field: nil, operator: nil, value: nil); end

              sig do
                override
                  .returns(
                    {
                      field: String,
                      operator: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Condition::Operator::TaggedSymbol,
                      value: String
                    }
                  )
              end
              def to_hash; end

              # The operator to be used in the rule.
              module Operator
                extend FinchAPI::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Condition::Operator) }
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
                      FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Condition::Operator::TaggedSymbol
                    )
                  end

                EQUALS =
                  T.let(
                    :equals,
                    FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Condition::Operator::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::Condition::Operator::TaggedSymbol]
                    )
                end
                def self.values; end
              end
            end

            # The entity type to which the rule is applied.
            module EntityType
              extend FinchAPI::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::EntityType) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::EntityType::TaggedSymbol
                  )
                end

              PAY_STATEMENT_ITEM =
                T.let(
                  :pay_statement_item,
                  FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::EntityType::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse::EntityType::TaggedSymbol]
                  )
              end
              def self.values; end
            end
          end
        end
      end
    end
  end
end
