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

        # @!attribute company_contribution
        #   The company match for this benefit.
        #
        #   @return [FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution, nil]
        required :company_contribution, -> { FinchAPI::HRIS::CompanyBenefit::CompanyContribution }, nil?: true

        # @!attribute description
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute frequency
        #   The frequency of the benefit deduction/contribution.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil]
        required :frequency, enum: -> { FinchAPI::HRIS::BenefitFrequency }, nil?: true

        # @!attribute type
        #   Type of benefit.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::BenefitType, nil]
        required :type, enum: -> { FinchAPI::HRIS::BenefitType }, nil?: true

        # @!method initialize(benefit_id:, company_contribution:, description:, frequency:, type:)
        #   @param benefit_id [String] The id of the benefit.
        #
        #   @param company_contribution [FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution, nil] The company match for this benefit.
        #
        #   @param description [String, nil]
        #
        #   @param frequency [Symbol, FinchAPI::Models::HRIS::BenefitFrequency, nil] The frequency of the benefit deduction/contribution.
        #
        #   @param type [Symbol, FinchAPI::Models::HRIS::BenefitType, nil] Type of benefit.

        # @see FinchAPI::Models::HRIS::CompanyBenefit#company_contribution
        class CompanyContribution < FinchAPI::Internal::Type::BaseModel
          # @!attribute tiers
          #
          #   @return [Array<FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution::Tier>, nil]
          optional :tiers,
                   -> {
                     FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::CompanyBenefit::CompanyContribution::Tier]
                   }

          # @!attribute type
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution::Type, nil]
          optional :type, enum: -> { FinchAPI::HRIS::CompanyBenefit::CompanyContribution::Type }

          # @!method initialize(tiers: nil, type: nil)
          #   The company match for this benefit.
          #
          #   @param tiers [Array<FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution::Tier>]
          #   @param type [Symbol, FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution::Type]

          class Tier < FinchAPI::Internal::Type::BaseModel
            # @!attribute match
            #
            #   @return [Integer, nil]
            optional :match, Integer

            # @!attribute threshold
            #
            #   @return [Integer, nil]
            optional :threshold, Integer

            # @!method initialize(match: nil, threshold: nil)
            #   @param match [Integer]
            #   @param threshold [Integer]
          end

          # @see FinchAPI::Models::HRIS::CompanyBenefit::CompanyContribution#type
          module Type
            extend FinchAPI::Internal::Type::Enum

            MATCH = :match

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
