# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class W42005 < FinchAPI::Internal::Type::BaseModel
        # @!attribute [r] data
        #   Detailed information specific to the 2005 W4 form.
        #
        #   @return [FinchAPI::Models::HRIS::W42005::Data, nil]
        optional :data, -> { FinchAPI::Models::HRIS::W42005::Data }

        # @!parse
        #   # @return [FinchAPI::Models::HRIS::W42005::Data]
        #   attr_writer :data

        # @!attribute [r] type
        #   Specifies the form type, indicating that this document is a 2005 W4 form.
        #
        #   @return [Symbol, FinchAPI::Models::HRIS::W42005::Type, nil]
        optional :type, enum: -> { FinchAPI::Models::HRIS::W42005::Type }

        # @!parse
        #   # @return [Symbol, FinchAPI::Models::HRIS::W42005::Type]
        #   attr_writer :type

        # @!attribute year
        #   The tax year this W4 document applies to.
        #
        #   @return [Float, nil]
        optional :year, Float, nil?: true

        # @!parse
        #   # A 2005 version of the W-4 tax form containing information on an individual's
        #   # filing status, dependents, and withholding details.
        #   #
        #   # @param data [FinchAPI::Models::HRIS::W42005::Data]
        #   # @param type [Symbol, FinchAPI::Models::HRIS::W42005::Type]
        #   # @param year [Float, nil]
        #   #
        #   def initialize(data: nil, type: nil, year: nil, **) = super

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

        # @see FinchAPI::Models::HRIS::W42005#data
        class Data < FinchAPI::Internal::Type::BaseModel
          # @!attribute additional_withholding
          #   Additional withholding amount (in cents).
          #
          #   @return [Integer, nil]
          optional :additional_withholding, Integer, nil?: true

          # @!attribute [r] exemption
          #   Indicates exemption status from federal tax withholding.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::W42005::Data::Exemption, nil]
          optional :exemption, enum: -> { FinchAPI::Models::HRIS::W42005::Data::Exemption }

          # @!parse
          #   # @return [Symbol, FinchAPI::Models::HRIS::W42005::Data::Exemption]
          #   attr_writer :exemption

          # @!attribute filing_status
          #   The individual's filing status for tax purposes.
          #
          #   @return [Symbol, FinchAPI::Models::HRIS::W42005::Data::FilingStatus, nil]
          optional :filing_status, enum: -> { FinchAPI::Models::HRIS::W42005::Data::FilingStatus }, nil?: true

          # @!attribute [r] individual_id
          #   The unique identifier for the individual associated with this 2005 W4 form.
          #
          #   @return [String, nil]
          optional :individual_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :individual_id

          # @!attribute total_number_of_allowances
          #   Total number of allowances claimed (in cents).
          #
          #   @return [Integer, nil]
          optional :total_number_of_allowances, Integer, nil?: true

          # @!parse
          #   # Detailed information specific to the 2005 W4 form.
          #   #
          #   # @param additional_withholding [Integer, nil]
          #   # @param exemption [Symbol, FinchAPI::Models::HRIS::W42005::Data::Exemption]
          #   # @param filing_status [Symbol, FinchAPI::Models::HRIS::W42005::Data::FilingStatus, nil]
          #   # @param individual_id [String]
          #   # @param total_number_of_allowances [Integer, nil]
          #   #
          #   def initialize(
          #     additional_withholding: nil,
          #     exemption: nil,
          #     filing_status: nil,
          #     individual_id: nil,
          #     total_number_of_allowances: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

          # Indicates exemption status from federal tax withholding.
          #
          # @see FinchAPI::Models::HRIS::W42005::Data#exemption
          module Exemption
            extend FinchAPI::Internal::Type::Enum

            EXEMPT = :exempt
            NON_EXEMPT = :non_exempt

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # The individual's filing status for tax purposes.
          #
          # @see FinchAPI::Models::HRIS::W42005::Data#filing_status
          module FilingStatus
            extend FinchAPI::Internal::Type::Enum

            MARRIED = :married
            MARRIED_BUT_WITHHOLD_AT_HIGHER_SINGLE_RATE = :married_but_withhold_at_higher_single_rate
            SINGLE = :single

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # Specifies the form type, indicating that this document is a 2005 W4 form.
        #
        # @see FinchAPI::Models::HRIS::W42005#type
        module Type
          extend FinchAPI::Internal::Type::Enum

          W4_2005 = :w4_2005

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
