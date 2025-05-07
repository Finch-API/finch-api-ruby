# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Benefits#create
      class BenefitCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # @!attribute company_contribution
        #   The company match for this benefit.
        #
        #   @return [FinchAPI::HRIS::BenefitCreateParams::CompanyContribution, nil]
        optional :company_contribution,
                 -> { FinchAPI::HRIS::BenefitCreateParams::CompanyContribution },
                 nil?: true

        # @!attribute description
        #   Name of the benefit as it appears in the provider and pay statements. Recommend
        #   limiting this to <30 characters due to limitations in specific providers (e.g.
        #   Justworks).
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute frequency
        #   The frequency of the benefit deduction/contribution.
        #
        #   @return [Symbol, FinchAPI::HRIS::BenefitFrequency, nil]
        optional :frequency, enum: -> { FinchAPI::HRIS::BenefitFrequency }, nil?: true

        # @!attribute type
        #   Type of benefit.
        #
        #   @return [Symbol, FinchAPI::HRIS::BenefitType, nil]
        optional :type, enum: -> { FinchAPI::HRIS::BenefitType }, nil?: true

        # @!method initialize(company_contribution: nil, description: nil, frequency: nil, type: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::HRIS::BenefitCreateParams} for more details.
        #
        #   @param company_contribution [FinchAPI::HRIS::BenefitCreateParams::CompanyContribution, nil] The company match for this benefit.
        #
        #   @param description [String] Name of the benefit as it appears in the provider and pay statements. Recommend
        #
        #   @param frequency [Symbol, FinchAPI::HRIS::BenefitFrequency, nil] The frequency of the benefit deduction/contribution.
        #
        #   @param type [Symbol, FinchAPI::HRIS::BenefitType, nil] Type of benefit.
        #
        #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]

        class CompanyContribution < FinchAPI::Internal::Type::BaseModel
          # @!attribute tiers
          #
          #   @return [Array<FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::Tier>, nil]
          optional :tiers,
                   -> {
                     FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::Tier]
                   }

          # @!attribute type
          #
          #   @return [Symbol, FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::Type, nil]
          optional :type, enum: -> { FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::Type }

          # @!method initialize(tiers: nil, type: nil)
          #   The company match for this benefit.
          #
          #   @param tiers [Array<FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::Tier>]
          #   @param type [Symbol, FinchAPI::HRIS::BenefitCreateParams::CompanyContribution::Type]

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

          # @see FinchAPI::HRIS::BenefitCreateParams::CompanyContribution#type
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
