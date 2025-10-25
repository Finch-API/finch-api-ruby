# frozen_string_literal: true

module FinchAPI
  module Models
    module Payroll
      # @see FinchAPI::Resources::Payroll::PayGroups#list
      class PayGroupListParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute entity_ids
        #   The entity IDs to specify which entities' data to access.
        #
        #   @return [Array<String>]
        required :entity_ids, FinchAPI::Internal::Type::ArrayOf[String]

        # @!attribute individual_id
        #
        #   @return [String, nil]
        optional :individual_id, String

        # @!attribute pay_frequencies
        #
        #   @return [Array<String>, nil]
        optional :pay_frequencies, FinchAPI::Internal::Type::ArrayOf[String]

        # @!method initialize(entity_ids:, individual_id: nil, pay_frequencies: nil, request_options: {})
        #   @param entity_ids [Array<String>] The entity IDs to specify which entities' data to access.
        #
        #   @param individual_id [String]
        #
        #   @param pay_frequencies [Array<String>]
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
