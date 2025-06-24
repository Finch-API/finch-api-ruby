# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class BenefitFeaturesAndOperations < FinchAPI::Internal::Type::BaseModel
        # @!attribute supported_features
        #
        #   @return [FinchAPI::Models::HRIS::SupportedBenefit, nil]
        optional :supported_features, -> { FinchAPI::HRIS::SupportedBenefit }

        # @!attribute supported_operations
        #
        #   @return [FinchAPI::Models::HRIS::SupportPerBenefitType, nil]
        optional :supported_operations, -> { FinchAPI::HRIS::SupportPerBenefitType }

        # @!method initialize(supported_features: nil, supported_operations: nil)
        #   @param supported_features [FinchAPI::Models::HRIS::SupportedBenefit]
        #   @param supported_operations [FinchAPI::Models::HRIS::SupportPerBenefitType]
      end
    end
  end
end
