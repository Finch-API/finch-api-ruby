# frozen_string_literal: true

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
            #
            # @overload create(attributes: nil, conditions: nil, effective_end_date: nil, effective_start_date: nil, entity_type: nil, request_options: {})
            #
            # @param attributes [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Attributes] Specifies the fields to be applied when the condition is met.
            #
            # @param conditions [Array<FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::Condition>]
            #
            # @param effective_end_date [String, nil] Specifies when the rules should stop applying rules based on the date.
            #
            # @param effective_start_date [String, nil] Specifies when the rule should begin applying based on the date.
            #
            # @param entity_type [Symbol, FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams::EntityType] The entity type to which the rule is applied.
            #
            # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateResponse]
            #
            # @see FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateParams
            def create(params = {})
              parsed, options = FinchAPI::HRIS::Company::PayStatementItem::RuleCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "employer/pay-statement-item/rule",
                body: parsed,
                model: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleCreateResponse,
                options: options
              )
            end

            # **Beta:** this endpoint currently serves employers onboarded after March 4th and
            # historical support will be added soon Update a rule for a pay statement item.
            #
            # @overload update(rule_id, optional_property: nil, request_options: {})
            #
            # @param rule_id [String]
            # @param optional_property [Object]
            # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse]
            #
            # @see FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateParams
            def update(rule_id, params = {})
              parsed, options = FinchAPI::HRIS::Company::PayStatementItem::RuleUpdateParams.dump_request(params)
              @client.request(
                method: :put,
                path: ["employer/pay-statement-item/rule/%1$s", rule_id],
                body: parsed,
                model: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleUpdateResponse,
                options: options
              )
            end

            # **Beta:** this endpoint currently serves employers onboarded after March 4th and
            # historical support will be added soon List all rules of a connection account.
            #
            # @overload list(request_options: {})
            #
            # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [FinchAPI::Internal::ResponsesPage<FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse>]
            #
            # @see FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListParams
            def list(params = {})
              @client.request(
                method: :get,
                path: "employer/pay-statement-item/rule",
                page: FinchAPI::Internal::ResponsesPage,
                model: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleListResponse,
                options: params[:request_options]
              )
            end

            # **Beta:** this endpoint currently serves employers onboarded after March 4th and
            # historical support will be added soon Delete a rule for a pay statement item.
            #
            # @overload delete(rule_id, request_options: {})
            #
            # @param rule_id [String]
            # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse]
            #
            # @see FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteParams
            def delete(rule_id, params = {})
              @client.request(
                method: :delete,
                path: ["employer/pay-statement-item/rule/%1$s", rule_id],
                model: FinchAPI::Models::HRIS::Company::PayStatementItem::RuleDeleteResponse,
                options: params[:request_options]
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
