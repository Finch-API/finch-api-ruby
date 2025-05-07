# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class SupportPerBenefitType < FinchAPI::Internal::Type::BaseModel
        # @!attribute company_benefits
        #
        #   @return [FinchAPI::OperationSupportMatrix, nil]
        optional :company_benefits, -> { FinchAPI::OperationSupportMatrix }

        # @!attribute individual_benefits
        #
        #   @return [FinchAPI::OperationSupportMatrix, nil]
        optional :individual_benefits, -> { FinchAPI::OperationSupportMatrix }

        # @!method initialize(company_benefits: nil, individual_benefits: nil)
        #   @param company_benefits [FinchAPI::OperationSupportMatrix]
        #   @param individual_benefits [FinchAPI::OperationSupportMatrix]
      end
    end
  end
end
