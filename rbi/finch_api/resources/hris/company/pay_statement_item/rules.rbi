# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Company
        class PayStatementItem
          class Rules
            # Custom rules can be created to associate specific attributes to pay statement
            # items depending on the use case. For example, pay statement items that meet
            # certain conditions can be labeled as a pre-tax 401k. This metadata can be
            # retrieved where pay statement item information is available.
            sig do
              params(
                entity_ids: T::Array[String],
                attributes:
                  FinchAPI::HRIS::Company::PayStatementItem::RuleCreateParams::Attributes::OrHash,
                conditions:
                  T::Array[
                    FinchAPI::HRIS::Company::PayStatementItem::RuleCreateParams::Condition::OrHash
                  ],
                effective_end_date: T.nilable(String),
                effective_start_date: T.nilable(String),
                entity_type:
                  FinchAPI::HRIS::Company::PayStatementItem::RuleCreateParams::EntityType::OrSymbol,
                request_options: FinchAPI::RequestOptions::OrHash
              ).returns(
                FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateResponse
              )
            end
            def create(
              # Query param: The entity IDs to create the rule for.
              entity_ids: nil,
              # Body param: Specifies the fields to be applied when the condition is met.
              attributes: nil,
              # Body param:
              conditions: nil,
              # Body param: Specifies when the rules should stop applying rules based on the
              # date.
              effective_end_date: nil,
              # Body param: Specifies when the rule should begin applying based on the date.
              effective_start_date: nil,
              # Body param: The entity type to which the rule is applied.
              entity_type: nil,
              request_options: {}
            )
            end

            # Update a rule for a pay statement item.
            sig do
              params(
                rule_id: String,
                entity_ids: T::Array[String],
                optional_property: T.anything,
                request_options: FinchAPI::RequestOptions::OrHash
              ).returns(
                FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse
              )
            end
            def update(
              # Path param:
              rule_id,
              # Query param: The entity IDs to update the rule for.
              entity_ids: nil,
              # Body param:
              optional_property: nil,
              request_options: {}
            )
            end

            # List all rules of a connection account.
            sig do
              params(
                entity_ids: T::Array[String],
                request_options: FinchAPI::RequestOptions::OrHash
              ).returns(
                FinchAPI::Internal::ResponsesPage[
                  FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse
                ]
              )
            end
            def list(
              # The entity IDs to retrieve rules for.
              entity_ids: nil,
              request_options: {}
            )
            end

            # Delete a rule for a pay statement item.
            sig do
              params(
                rule_id: String,
                entity_ids: T::Array[String],
                request_options: FinchAPI::RequestOptions::OrHash
              ).returns(
                FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse
              )
            end
            def delete(
              rule_id,
              # The entity IDs to delete the rule for.
              entity_ids: nil,
              request_options: {}
            )
            end

            # @api private
            sig { params(client: FinchAPI::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
