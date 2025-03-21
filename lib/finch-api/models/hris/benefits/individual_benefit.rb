# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      module Benefits
        class IndividualBenefit < FinchAPI::BaseModel
          # @!attribute [r] body
          #
          #   @return [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body, nil]
          optional :body, -> { FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body }

          # @!parse
          #   # @return [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body]
          #   attr_writer :body

          # @!attribute [r] code
          #
          #   @return [Integer, nil]
          optional :code, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :code

          # @!attribute [r] individual_id
          #
          #   @return [String, nil]
          optional :individual_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :individual_id

          # @!parse
          #   # @param body [FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body]
          #   # @param code [Integer]
          #   # @param individual_id [String]
          #   #
          #   def initialize(body: nil, code: nil, individual_id: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void

          class Body < FinchAPI::BaseModel
            # @!attribute annual_maximum
            #   If the benefit supports annual maximum, the amount in cents for this individual.
            #
            #   @return [Integer, nil]
            optional :annual_maximum, Integer, nil?: true

            # @!attribute catch_up
            #   If the benefit supports catch up (401k, 403b, etc.), whether catch up is enabled
            #     for this individual.
            #
            #   @return [Boolean, nil]
            optional :catch_up, FinchAPI::BooleanModel, nil?: true

            # @!attribute company_contribution
            #
            #   @return [FinchAPI::Models::HRIS::BenefitContribution, nil]
            optional :company_contribution, -> { FinchAPI::Models::HRIS::BenefitContribution }, nil?: true

            # @!attribute employee_deduction
            #
            #   @return [FinchAPI::Models::HRIS::BenefitContribution, nil]
            optional :employee_deduction, -> { FinchAPI::Models::HRIS::BenefitContribution }, nil?: true

            # @!attribute hsa_contribution_limit
            #   Type for HSA contribution limit if the benefit is a HSA.
            #
            #   @return [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit, nil]
            optional :hsa_contribution_limit,
                     enum: -> { FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit },
                     nil?: true

            # @!parse
            #   # @param annual_maximum [Integer, nil]
            #   # @param catch_up [Boolean, nil]
            #   # @param company_contribution [FinchAPI::Models::HRIS::BenefitContribution, nil]
            #   # @param employee_deduction [FinchAPI::Models::HRIS::BenefitContribution, nil]
            #   # @param hsa_contribution_limit [Symbol, FinchAPI::Models::HRIS::Benefits::IndividualBenefit::Body::HsaContributionLimit, nil]
            #   #
            #   def initialize(
            #     annual_maximum: nil,
            #     catch_up: nil,
            #     company_contribution: nil,
            #     employee_deduction: nil,
            #     hsa_contribution_limit: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | FinchAPI::BaseModel) -> void

            # Type for HSA contribution limit if the benefit is a HSA.
            module HsaContributionLimit
              extend FinchAPI::Enum

              INDIVIDUAL = :individual
              FAMILY = :family

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end
          end
        end
      end

      IndividualBenefit = Benefits::IndividualBenefit
    end
  end
end
