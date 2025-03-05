# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualEnrolledIDsResponse < FinchAPI::BaseModel
          # @!attribute benefit_id
          #
          #   @return [String]
          required :benefit_id, String

          # @!attribute individual_ids
          #
          #   @return [Array<String>]
          required :individual_ids, FinchAPI::ArrayOf[String]

          # @!parse
          #   # @param benefit_id [String]
          #   # @param individual_ids [Array<String>]
          #   #
          #   def initialize(benefit_id:, individual_ids:, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void
        end
      end
    end
  end
end
