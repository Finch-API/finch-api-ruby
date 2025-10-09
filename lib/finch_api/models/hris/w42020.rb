# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class W42020 < FinchAPI::Internal::Type::BaseModel
        # @!attribute data
        #   Detailed information specific to the 2020 W4 form.
        #
        #   @return [FinchAPI::Models::HRIS::W42020::Data]
        required :data, -> { FinchAPI::HRIS::W42020::Data }

        # @!attribute type
        #   Specifies the form type, indicating that this document is a 2020 W4 form.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::W42020::Type]
        required :type, enum: -> { FinchAPI::HRIS::W42020::Type }

        # @!attribute year
        #   The tax year this W4 document applies to.
        #
        #   @return [Float]
        required :year, Float

        # @!method initialize(data:, type:, year:)
        #   A 2020 version of the W-4 tax form containing information on an individual's
        #   filing status, dependents, and withholding details.
        #
        #   @param data [FinchAPI::Models::HRIS::W42020::Data] Detailed information specific to the 2020 W4 form.
        #
        #   @param type [Symbol, FinchAPI::Models::HRIS::W42020::Type] Specifies the form type, indicating that this document is a 2020 W4 form.
        #
        #   @param year [Float] The tax year this W4 document applies to.

        # @see FinchAPI::Models::HRIS::W42020#data
        class Data < FinchAPI::Internal::Type::BaseModel
          # @!attribute amount_for_other_dependents
          #   Amount claimed for dependents other than qualifying children under 17 (in
          #   cents).
          #
          #   @return [Integer]
          required :amount_for_other_dependents, Integer

          # @!attribute amount_for_qualifying_children_under_17
          #   Amount claimed for dependents under 17 years old (in cents).
          #
          #   @return [Integer]
          required :amount_for_qualifying_children_under_17, Integer

          # @!attribute deductions
          #   Deductible expenses (in cents).
          #
          #   @return [Integer]
          required :deductions, Integer

          # @!attribute extra_withholding
          #   Additional withholding amount (in cents).
          #
          #   @return [Integer]
          required :extra_withholding, Integer

          # @!attribute filing_status
          #   The individual's filing status for tax purposes.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::W42020::Data::FilingStatus, nil]
          required :filing_status, enum: -> { FinchAPI::HRIS::W42020::Data::FilingStatus }, nil?: true

          # @!attribute individual_id
          #   The unique identifier for the individual associated with this document.
          #
          #   @return [String]
          required :individual_id, String

          # @!attribute other_income
          #   Additional income from sources outside of primary employment (in cents).
          #
          #   @return [Integer]
          required :other_income, Integer

          # @!attribute total_claim_dependent_and_other_credits
          #   Total amount claimed for dependents and other credits (in cents).
          #
          #   @return [Integer]
          required :total_claim_dependent_and_other_credits, Integer

          # @!method initialize(amount_for_other_dependents:, amount_for_qualifying_children_under_17:, deductions:, extra_withholding:, filing_status:, individual_id:, other_income:, total_claim_dependent_and_other_credits:)
          #   Some parameter documentations has been truncated, see
          #   {FinchAPI::Models::HRIS::W42020::Data} for more details.
          #
          #   Detailed information specific to the 2020 W4 form.
          #
          #   @param amount_for_other_dependents [Integer] Amount claimed for dependents other than qualifying children under 17 (in cents)
          #
          #   @param amount_for_qualifying_children_under_17 [Integer] Amount claimed for dependents under 17 years old (in cents).
          #
          #   @param deductions [Integer] Deductible expenses (in cents).
          #
          #   @param extra_withholding [Integer] Additional withholding amount (in cents).
          #
          #   @param filing_status [Symbol, FinchAPI::Models::HRIS::W42020::Data::FilingStatus, nil] The individual's filing status for tax purposes.
          #
          #   @param individual_id [String] The unique identifier for the individual associated with this document.
          #
          #   @param other_income [Integer] Additional income from sources outside of primary employment (in cents).
          #
          #   @param total_claim_dependent_and_other_credits [Integer] Total amount claimed for dependents and other credits (in cents).

          # The individual's filing status for tax purposes.
          #
          # @see FinchAPI::Models::HRIS::W42020::Data#filing_status
          module FilingStatus
            extend FinchAPI::Internal::Type::Enum

            HEAD_OF_HOUSEHOLD = :head_of_household
            MARRIED_FILING_JOINTLY_OR_QUALIFYING_SURVIVING_SPOUSE =
              :married_filing_jointly_or_qualifying_surviving_spouse
            SINGLE_OR_MARRIED_FILING_SEPARATELY = :single_or_married_filing_separately

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Specifies the form type, indicating that this document is a 2020 W4 form.
        #
        # @see FinchAPI::Models::HRIS::W42020#type
        module Type
          extend FinchAPI::Internal::Type::Enum

          W4_2020 = :w4_2020

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
