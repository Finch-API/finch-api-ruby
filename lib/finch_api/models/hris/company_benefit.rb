# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Benefits#retrieve
      class CompanyBenefit < FinchAPI::Internal::Type::BaseModel
        # @!attribute benefit_id
        #   The id of the benefit.
        #
        #   @return [String]
        required :benefit_id, String

        # @!attribute description
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute frequency
        #   The frequency of the benefit deduction/contribution.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil]
        required :frequency, enum: -> { FinchAPI::Models::HRIS::BenefitFrequency }, nil?: true

        # @!attribute type
        #   Type of benefit.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
        required :type, enum: -> { FinchAPI::Models::HRIS::BenefitType }, nil?: true

        # @!method initialize(benefit_id:, description:, frequency:, type:)
        #   @param benefit_id [String] The id of the benefit.
        #
        #   @param description [String, nil]
        #
        #   @param frequency [Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil] The frequency of the benefit deduction/contribution.
        #
        #   @param type [Symbol, FinchAPI::Models::HRIS::BenefitType, nil] Type of benefit.
      end
    end
  end
end
