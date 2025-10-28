# frozen_string_literal: true

module FinchAPI
  module Resources
    class Payroll
      class PayGroups
        # Read information from a single pay group
        #
        # @overload retrieve(pay_group_id, entity_ids: nil, request_options: {})
        #
        # @param pay_group_id [String]
        #
        # @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access.
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::Payroll::PayGroupRetrieveResponse]
        #
        # @see FinchAPI::Models::Payroll::PayGroupRetrieveParams
        def retrieve(pay_group_id, params = {})
          parsed, options = FinchAPI::Payroll::PayGroupRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["employer/pay-groups/%1$s", pay_group_id],
            query: parsed,
            model: FinchAPI::Models::Payroll::PayGroupRetrieveResponse,
            options: options
          )
        end

        # Read company pay groups and frequencies
        #
        # @overload list(entity_ids: nil, individual_id: nil, pay_frequencies: nil, request_options: {})
        #
        # @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access.
        #
        # @param individual_id [String]
        #
        # @param pay_frequencies [Array<String>]
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Internal::SinglePage<FinchAPI::Models::Payroll::PayGroupListResponse>]
        #
        # @see FinchAPI::Models::Payroll::PayGroupListParams
        def list(params = {})
          parsed, options = FinchAPI::Payroll::PayGroupListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "employer/pay-groups",
            query: parsed,
            page: FinchAPI::Internal::SinglePage,
            model: FinchAPI::Models::Payroll::PayGroupListResponse,
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
