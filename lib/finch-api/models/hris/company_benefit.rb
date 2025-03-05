# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class CompanyBenefit < FinchAPI::BaseModel
        # @!attribute benefit_id
        #
        #   @return [String]
        required :benefit_id, String

        # @!attribute description
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute frequency
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil]
        required :frequency, enum: -> { FinchAPI::Models::HRIS::BenefitFrequency }, nil?: true

        # @!attribute type
        #   Type of benefit.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
        required :type, enum: -> { FinchAPI::Models::HRIS::BenefitType }, nil?: true

        # @!parse
        #   # @param benefit_id [String]
        #   # @param description [String, nil]
        #   # @param frequency [Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil]
        #   # @param type [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
        #   #
        #   def initialize(benefit_id:, description:, frequency:, type:, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void
      end
    end
  end
end
