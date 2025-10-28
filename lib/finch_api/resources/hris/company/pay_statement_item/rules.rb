# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Company
        class PayStatementItem
          class Rules
            # Some parameter documentations has been truncated, see
            # {FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams} for more
            # details.
            #
            # **Beta:** this endpoint currently serves employers onboarded after March 4th and
            # historical support will be added soon Custom rules can be created to associate
            # specific attributes to pay statement items depending on the use case. For
            # example, pay statement items that meet certain conditions can be labeled as a
            # pre-tax 401k. This metadata can be retrieved where pay statement item
            # information is available.
            #
            # @overload create(entity_ids: nil, attributes: nil, conditions: nil, effective_end_date: nil, effective_start_date: nil, entity_type: nil, request_options: {})
            #
            # @param entity_ids [Array<String>] Query param: The entity IDs to create the rule for.
            #
            # @param attributes [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Attributes] Body param: Specifies the fields to be applied when the condition is met.
            #
            # @param conditions [Array<FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition>] Body param:
            #
            # @param effective_end_date [String, nil] Body param: Specifies when the rules should stop applying rules based on the dat
            #
            # @param effective_start_date [String, nil] Body param: Specifies when the rule should begin applying based on the date.
            #
            # @param entity_type [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::EntityType] Body param: The entity type to which the rule is applied.
            #
            # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateResponse]
            #
            # @see FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams
            def create(params = {})
              parsed, options = FinchAPI::HRIS::Company::PayStatementItem::RuleCreateParams.dump_request(params)
              query_params = [:entity_ids]
              @client.request(
                method: :post,
                path: "employer/pay-statement-item/rule",
                query: parsed.slice(*query_params),
                body: parsed.except(*query_params),
                model: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateResponse,
                options: options
              )
            end

            # **Beta:** this endpoint currently serves employers onboarded after March 4th and
            # historical support will be added soon Update a rule for a pay statement item.
            #
            # @overload update(rule_id, entity_ids: nil, optional_property: nil, request_options: {})
            #
            # @param rule_id [String] Path param:
            #
            # @param entity_ids [Array<String>] Query param: The entity IDs to update the rule for.
            #
            # @param optional_property [Object] Body param:
            #
            # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse]
            #
            # @see FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateParams
            def update(rule_id, params = {})
              parsed, options = FinchAPI::HRIS::Company::PayStatementItem::RuleUpdateParams.dump_request(params)
              query_params = [:entity_ids]
              @client.request(
                method: :put,
                path: ["employer/pay-statement-item/rule/%1$s", rule_id],
                query: parsed.slice(*query_params),
                body: parsed.except(*query_params),
                model: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse,
                options: options
              )
            end

            # **Beta:** this endpoint currently serves employers onboarded after March 4th and
            # historical support will be added soon List all rules of a connection account.
            #
            # @overload list(entity_ids: nil, request_options: {})
            #
            # @param entity_ids [Array<String>] The entity IDs to retrieve rules for.
            #
            # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [FinchAPI::Internal::ResponsesPage<FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse>]
            #
            # @see FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListParams
            def list(params = {})
              parsed, options = FinchAPI::HRIS::Company::PayStatementItem::RuleListParams.dump_request(params)
              @client.request(
                method: :get,
                path: "employer/pay-statement-item/rule",
                query: parsed,
                page: FinchAPI::Internal::ResponsesPage,
                model: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse,
                options: options
              )
            end

            # **Beta:** this endpoint currently serves employers onboarded after March 4th and
            # historical support will be added soon Delete a rule for a pay statement item.
            #
            # @overload delete(rule_id, entity_ids: nil, request_options: {})
            #
            # @param rule_id [String]
            #
            # @param entity_ids [Array<String>] The entity IDs to delete the rule for.
            #
            # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse]
            #
            # @see FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteParams
            def delete(rule_id, params = {})
              parsed, options = FinchAPI::HRIS::Company::PayStatementItem::RuleDeleteParams.dump_request(params)
              @client.request(
                method: :delete,
                path: ["employer/pay-statement-item/rule/%1$s", rule_id],
                query: parsed,
                model: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse,
                options: options
              )
            end

            # @api private
            #
            # @param client [FinchAPI::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
