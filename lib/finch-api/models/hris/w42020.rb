# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class W42020 < FinchAPI::BaseModel
        # @!attribute [r] data
        #   Detailed information specific to the 2020 W4 form.
        #
        #   @return [FinchAPI::Models::HRIS::W42020::Data, nil]
        optional :data, -> { FinchAPI::Models::HRIS::W42020::Data }

        # @!parse
        #   # @return [FinchAPI::Models::HRIS::W42020::Data]
        #   attr_writer :data

        # @!attribute [r] type
        #   Specifies the form type, indicating that this document is a 2020 W4 form.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::W42020::Type, nil]
        optional :type, enum: -> { FinchAPI::Models::HRIS::W42020::Type }

        # @!parse
        #   # @return [Symbol, FinchAPI::Models::HRIS::W42020::Type]
        #   attr_writer :type

        # @!attribute year
        #   The tax year this W4 document applies to.
        #
        #   @return [Float, nil]
        optional :year, Float, nil?: true

        # @!parse
        #   # A 2020 version of the W-4 tax form containing information on an individual's
        #   #   filing status, dependents, and withholding details.
        #   #
        #   # @param data [FinchAPI::Models::HRIS::W42020::Data]
        #   # @param type [Symbol, FinchAPI::Models::HRIS::W42020::Type]
        #   # @param year [Float, nil]
        #   #
        #   def initialize(data: nil, type: nil, year: nil, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        class Data < FinchAPI::BaseModel
          # @!attribute amount_for_other_dependents
          #   Amount claimed for dependents other than qualifying children under 17 (in
          #     cents).
          #
          #   @return [Integer, nil]
          optional :amount_for_other_dependents, Integer, nil?: true

          # @!attribute amount_for_qualifying_children_under_17
          #   Amount claimed for dependents under 17 years old (in cents).
          #
          #   @return [Integer, nil]
          optional :amount_for_qualifying_children_under_17, Integer, nil?: true

          # @!attribute deductions
          #   Deductible expenses (in cents).
          #
          #   @return [Integer, nil]
          optional :deductions, Integer, nil?: true

          # @!attribute extra_withholding
          #   Additional withholding amount (in cents).
          #
          #   @return [Integer, nil]
          optional :extra_withholding, Integer, nil?: true

          # @!attribute filing_status
          #   The individual's filing status for tax purposes.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::W42020::Data::FilingStatus, nil]
          optional :filing_status, enum: -> { FinchAPI::Models::HRIS::W42020::Data::FilingStatus }, nil?: true

          # @!attribute [r] individual_id
          #   The unique identifier for the individual associated with this document.
          #
          #   @return [String, nil]
          optional :individual_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :individual_id

          # @!attribute other_income
          #   Additional income from sources outside of primary employment (in cents).
          #
          #   @return [Integer, nil]
          optional :other_income, Integer, nil?: true

          # @!attribute total_claim_dependent_and_other_credits
          #   Total amount claimed for dependents and other credits (in cents).
          #
          #   @return [Integer, nil]
          optional :total_claim_dependent_and_other_credits, Integer, nil?: true

          # @!parse
          #   # Detailed information specific to the 2020 W4 form.
          #   #
          #   # @param amount_for_other_dependents [Integer, nil]
          #   # @param amount_for_qualifying_children_under_17 [Integer, nil]
          #   # @param deductions [Integer, nil]
          #   # @param extra_withholding [Integer, nil]
          #   # @param filing_status [Symbol, FinchAPI::Models::HRIS::W42020::Data::FilingStatus, nil]
          #   # @param individual_id [String]
          #   # @param other_income [Integer, nil]
          #   # @param total_claim_dependent_and_other_credits [Integer, nil]
          #   #
          #   def initialize(
          #     amount_for_other_dependents: nil,
          #     amount_for_qualifying_children_under_17: nil,
          #     deductions: nil,
          #     extra_withholding: nil,
          #     filing_status: nil,
          #     individual_id: nil,
          #     other_income: nil,
          #     total_claim_dependent_and_other_credits: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | FinchAPI::BaseModel) -> void

          # The individual's filing status for tax purposes.
          module FilingStatus
            extend FinchAPI::Enum

            HEAD_OF_HOUSEHOLD = :head_of_household
            MARRIED_FILING_JOINTLY_OR_QUALIFYING_SURVIVING_SPOUSE =
              :married_filing_jointly_or_qualifying_surviving_spouse
            SINGLE_OR_MARRIED_FILING_SEPARATELY = :single_or_married_filing_separately

            finalize!
          end
        end

        # Specifies the form type, indicating that this document is a 2020 W4 form.
        module Type
          extend FinchAPI::Enum

          W4_2020 = :w4_2020

          finalize!
        end
      end
    end
  end
end
