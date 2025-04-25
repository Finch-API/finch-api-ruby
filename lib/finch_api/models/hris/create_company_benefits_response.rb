# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Benefits#create
      class CreateCompanyBenefitsResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute benefit_id
        #   The id of the benefit.
        #
        #   @return [String]
        required :benefit_id, String

        # @!attribute job_id
        #
        #   @return [String]
        required :job_id, String

        # @!method initialize(benefit_id:, job_id:)
        #   @param benefit_id [String] The id of the benefit.
        #
        #   @param job_id [String]
      end
    end
  end
end
