# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        # @see FinchAPI::Resources::HRIS::Benefits::Individuals#unenroll_many
        class UnenrolledIndividualBenefitResponse < FinchAPI::Internal::Type::BaseModel
          # @!attribute job_id
          #
          #   @return [String]
          required :job_id, String

          # @!method initialize(job_id:)
          #   @param job_id [String]
        end
      end
    end
  end
end
