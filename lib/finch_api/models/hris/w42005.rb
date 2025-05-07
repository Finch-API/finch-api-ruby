# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class W42005 < FinchAPI::Internal::Type::BaseModel
        # @!attribute data
        #   Detailed information specific to the 2005 W4 form.
        #
        #   @return [FinchAPI::HRIS::W42005::Data, nil]
        optional :data, -> { FinchAPI::HRIS::W42005::Data }

        # @!attribute type
        #   Specifies the form type, indicating that this document is a 2005 W4 form.
        #
        #   @return [Symbol, FinchAPI::HRIS::W42005::Type, nil]
        optional :type, enum: -> { FinchAPI::HRIS::W42005::Type }

        # @!attribute year
        #   The tax year this W4 document applies to.
        #
        #   @return [Float, nil]
        optional :year, Float, nil?: true

        # @!method initialize(data: nil, type: nil, year: nil)
        #   A 2005 version of the W-4 tax form containing information on an individual's
        #   filing status, dependents, and withholding details.
        #
        #   @param data [FinchAPI::HRIS::W42005::Data] Detailed information specific to the 2005 W4 form.
        #
        #   @param type [Symbol, FinchAPI::HRIS::W42005::Type] Specifies the form type, indicating that this document is a 2005 W4 form.
        #
        #   @param year [Float, nil] The tax year this W4 document applies to.

        # @see FinchAPI::HRIS::W42005#data
        class Data < FinchAPI::Internal::Type::BaseModel
          # @!attribute additional_withholding
          #   Additional withholding amount (in cents).
          #
          #   @return [Integer, nil]
          optional :additional_withholding, Integer, nil?: true

          # @!attribute exemption
          #   Indicates exemption status from federal tax withholding.
          #
          #   @return [Symbol, FinchAPI::HRIS::W42005::Data::Exemption, nil]
          optional :exemption, enum: -> { FinchAPI::HRIS::W42005::Data::Exemption }

          # @!attribute filing_status
          #   The individual's filing status for tax purposes.
          #
          #   @return [Symbol, FinchAPI::HRIS::W42005::Data::FilingStatus, nil]
          optional :filing_status, enum: -> { FinchAPI::HRIS::W42005::Data::FilingStatus }, nil?: true

          # @!attribute individual_id
          #   The unique identifier for the individual associated with this 2005 W4 form.
          #
          #   @return [String, nil]
          optional :individual_id, String

          # @!attribute total_number_of_allowances
          #   Total number of allowances claimed (in cents).
          #
          #   @return [Integer, nil]
          optional :total_number_of_allowances, Integer, nil?: true

          # @!method initialize(additional_withholding: nil, exemption: nil, filing_status: nil, individual_id: nil, total_number_of_allowances: nil)
          #   Detailed information specific to the 2005 W4 form.
          #
          #   @param additional_withholding [Integer, nil] Additional withholding amount (in cents).
          #
          #   @param exemption [Symbol, FinchAPI::HRIS::W42005::Data::Exemption] Indicates exemption status from federal tax withholding.
          #
          #   @param filing_status [Symbol, FinchAPI::HRIS::W42005::Data::FilingStatus, nil] The individual's filing status for tax purposes.
          #
          #   @param individual_id [String] The unique identifier for the individual associated with this 2005 W4 form.
          #
          #   @param total_number_of_allowances [Integer, nil] Total number of allowances claimed (in cents).

          # Indicates exemption status from federal tax withholding.
          #
          # @see FinchAPI::HRIS::W42005::Data#exemption
          module Exemption
            extend FinchAPI::Internal::Type::Enum

            EXEMPT = :exempt
            NON_EXEMPT = :non_exempt

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The individual's filing status for tax purposes.
          #
          # @see FinchAPI::HRIS::W42005::Data#filing_status
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
        # @see FinchAPI::HRIS::W42005#type
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
