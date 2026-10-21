# frozen_string_literal: true

module FinchAPI
  module Models
    module Payroll
      # @see FinchAPI::Resources::Payroll::PayGroups#retrieve
      class PayGroupRetrieveParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute pay_group_id
        #
        #   @return [String]
        required :pay_group_id, String

        # @!attribute entity_ids
        #   The entity IDs to specify which entities' data to access. Provide exactly one
        #   entity ID per request; a maximum of one is accepted. Required when the
        #   connection has more than one entity — omitting it returns a `400`
        #   `invalid_request_error`. Optional for single-entity connections.
        #
        #   @return [Array<String>, nil]
        optional :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

        # @!method initialize(pay_group_id:, entity_ids: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::Payroll::PayGroupRetrieveParams} for more details.
        #
        #   @param pay_group_id [String]
        #
        #   @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access. Provide exactly one en
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
