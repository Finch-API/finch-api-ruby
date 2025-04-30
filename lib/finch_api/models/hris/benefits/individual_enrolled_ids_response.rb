# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        # @see FinchAPI::Resources::HRIS::Benefits::Individuals#enrolled_ids
        class IndividualEnrolledIDsResponse < FinchAPI::Internal::Type::BaseModel
          # @!attribute benefit_id
          #   The id of the benefit.
          #
          #   @return [String]
          required :benefit_id, String

          # @!attribute individual_ids
          #
          #   @return [Array<String>]
          required :individual_ids, FinchAPI::Internal::Type::ArrayOf[String]

          # @!method initialize(benefit_id:, individual_ids:)
          #   @param benefit_id [String] The id of the benefit.
          #
          #   @param individual_ids [Array<String>]
        end
      end
    end
  end
end
