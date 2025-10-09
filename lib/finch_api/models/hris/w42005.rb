# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class W42005 < FinchAPI::Internal::Type::BaseModel
        # @!attribute data
        #   Detailed information specific to the 2005 W4 form.
        #
        #   @return [FinchAPI::Models::HRIS::W42005::Data]
        required :data, -> { FinchAPI::HRIS::W42005::Data }

        # @!attribute type
        #   Specifies the form type, indicating that this document is a 2005 W4 form.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::W42005::Type]
        required :type, enum: -> { FinchAPI::HRIS::W42005::Type }

        # @!attribute year
        #   The tax year this W4 document applies to.
        #
        #   @return [Float]
        required :year, Float

        # @!method initialize(data:, type:, year:)
        #   A 2005 version of the W-4 tax form containing information on an individual's
        #   filing status, dependents, and withholding details.
        #
        #   @param data [FinchAPI::Models::HRIS::W42005::Data] Detailed information specific to the 2005 W4 form.
        #
        #   @param type [Symbol, FinchAPI::Models::HRIS::W42005::Type] Specifies the form type, indicating that this document is a 2005 W4 form.
        #
        #   @param year [Float] The tax year this W4 document applies to.

        # @see FinchAPI::Models::HRIS::W42005#data
        class Data < FinchAPI::Internal::Type::BaseModel
          # @!attribute additional_withholding
          #   Additional withholding amount (in cents).
          #
          #   @return [Integer]
          required :additional_withholding, Integer

          # @!attribute exemption
          #   Indicates exemption status from federal tax withholding.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::W42005::Data::Exemption, nil]
          required :exemption, enum: -> { FinchAPI::HRIS::W42005::Data::Exemption }, nil?: true

          # @!attribute filing_status
          #   The individual's filing status for tax purposes.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::W42005::Data::FilingStatus, nil]
          required :filing_status, enum: -> { FinchAPI::HRIS::W42005::Data::FilingStatus }, nil?: true

          # @!attribute individual_id
          #   The unique identifier for the individual associated with this 2005 W4 form.
          #
          #   @return [String]
          required :individual_id, String

          # @!attribute total_number_of_allowances
          #   Total number of allowances claimed (in cents).
          #
          #   @return [Integer]
          required :total_number_of_allowances, Integer

          # @!method initialize(additional_withholding:, exemption:, filing_status:, individual_id:, total_number_of_allowances:)
          #   Detailed information specific to the 2005 W4 form.
          #
          #   @param additional_withholding [Integer] Additional withholding amount (in cents).
          #
          #   @param exemption [Symbol, FinchAPI::Models::HRIS::W42005::Data::Exemption, nil] Indicates exemption status from federal tax withholding.
          #
          #   @param filing_status [Symbol, FinchAPI::Models::HRIS::W42005::Data::FilingStatus, nil] The individual's filing status for tax purposes.
          #
          #   @param individual_id [String] The unique identifier for the individual associated with this 2005 W4 form.
          #
          #   @param total_number_of_allowances [Integer] Total number of allowances claimed (in cents).

          # Indicates exemption status from federal tax withholding.
          #
          # @see FinchAPI::Models::HRIS::W42005::Data#exemption
          module Exemption
            extend FinchAPI::Internal::Type::Enum

            EXEMPT = :exempt
            NON_EXEMPT = :non_exempt

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The individual's filing status for tax purposes.
          #
          # @see FinchAPI::Models::HRIS::W42005::Data#filing_status
          module FilingStatus
            extend FinchAPI::Internal::Type::Enum

            MARRIED = :married
            MARRIED_BUT_WITHHOLD_AT_HIGHER_SINGLE_RATE = :married_but_withhold_at_higher_single_rate
            SINGLE = :single

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Specifies the form type, indicating that this document is a 2005 W4 form.
        #
        # @see FinchAPI::Models::HRIS::W42005#type
        module Type
          extend FinchAPI::Internal::Type::Enum

          W4_2005 = :w4_2005

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
