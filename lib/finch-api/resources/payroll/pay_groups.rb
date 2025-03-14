# frozen_string_literal: true

module FinchAPI
  module Resources
    class Payroll
      class PayGroups
        # Read information from a single pay group
        #
        # @param pay_group_id [String]
        #
        # @param params [FinchAPI::Models::Payroll::PayGroupRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::Models::Payroll::PayGroupRetrieveResponse]
        def retrieve(pay_group_id, params = {})
          @client.request(
            method: :get,
            path: ["employer/pay-groups/%0s", pay_group_id],
            model: FinchAPI::Models::Payroll::PayGroupRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Read company pay groups and frequencies
        #
        # @param params [FinchAPI::Models::Payroll::PayGroupListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :individual_id
        #
        #   @option params [Array<String>] :pay_frequencies
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::SinglePage<FinchAPI::Models::Payroll::PayGroupListResponse>]
        def list(params = {})
          parsed, options = FinchAPI::Models::Payroll::PayGroupListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "employer/pay-groups",
            query: parsed,
            page: FinchAPI::SinglePage,
            model: FinchAPI::Models::Payroll::PayGroupListResponse,
            options: options
          )
        end

        # @param client [FinchAPI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
