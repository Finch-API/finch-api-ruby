# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class SupportPerBenefitType < FinchAPI::BaseModel
        # @!attribute [r] company_benefits
        #
        #   @return [FinchAPI::Models::OperationSupportMatrix, nil]
        optional :company_benefits, -> { FinchAPI::Models::OperationSupportMatrix }

        # @!parse
        #   # @return [FinchAPI::Models::OperationSupportMatrix]
        #   attr_writer :company_benefits

        # @!attribute [r] individual_benefits
        #
        #   @return [FinchAPI::Models::OperationSupportMatrix, nil]
        optional :individual_benefits, -> { FinchAPI::Models::OperationSupportMatrix }

        # @!parse
        #   # @return [FinchAPI::Models::OperationSupportMatrix]
        #   attr_writer :individual_benefits

        # @!parse
        #   # @param company_benefits [FinchAPI::Models::OperationSupportMatrix]
        #   # @param individual_benefits [FinchAPI::Models::OperationSupportMatrix]
        #   #
        #   def initialize(company_benefits: nil, individual_benefits: nil, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void
      end
    end
  end
end
