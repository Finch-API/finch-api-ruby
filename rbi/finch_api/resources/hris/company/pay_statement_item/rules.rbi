# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Company
        class PayStatementItem
          class Rules
            # **Beta:** this endpoint currently serves employers onboarded after March 4th and
            # historical support will be added soon Custom rules can be created to associate
            # specific attributes to pay statement items depending on the use case. For
            # example, pay statement items that meet certain conditions can be labeled as a
            # pre-tax 401k. This metadata can be retrieved where pay statement item
            # information is available.
            sig do
              params(
                attributes: T.any(
                  FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Attributes,
                  FinchAPI::Internal::AnyHash
                ),
                conditions: T::Array[
                  T.any(
                    FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition,
                    FinchAPI::Internal::AnyHash
                  )
                ],
                effective_end_date: T.nilable(String),
                effective_start_date: T.nilable(String),
                entity_type: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::EntityType::OrSymbol,
                request_options: FinchAPI::RequestOpts
              )
                .returns(FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateResponse)
            end
            def create(
              # Specifies the fields to be applied when the condition is met.
              attributes: nil,
              conditions: nil,
              # Specifies when the rules should stop applying rules based on the date.
              effective_end_date: nil,
              # Specifies when the rule should begin applying based on the date.
              effective_start_date: nil,
              # The entity type to which the rule is applied.
              entity_type: nil,
              request_options: {}
            ); end
            # **Beta:** this endpoint currently serves employers onboarded after March 4th and
            # historical support will be added soon Update a rule for a pay statement item.
            sig do
              params(rule_id: String, optional_property: T.anything, request_options: FinchAPI::RequestOpts)
                .returns(FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse)
            end
            def update(rule_id, optional_property: nil, request_options: {}); end

            # **Beta:** this endpoint currently serves employers onboarded after March 4th and
            # historical support will be added soon List all rules of a connection account.
            sig do
              params(request_options: FinchAPI::RequestOpts)
                .returns(
                  FinchAPI::Internal::ResponsesPage[FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse]
                )
            end
            def list(request_options: {}); end

            # **Beta:** this endpoint currently serves employers onboarded after March 4th and
            # historical support will be added soon Delete a rule for a pay statement item.
            sig do
              params(rule_id: String, request_options: FinchAPI::RequestOpts)
                .returns(FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse)
            end
            def delete(rule_id, request_options: {}); end

            # @api private
            sig { params(client: FinchAPI::Client).returns(T.attached_class) }
            def self.new(client:); end
          end
        end
      end
    end
  end
end
