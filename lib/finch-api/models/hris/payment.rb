# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class Payment < FinchAPI::BaseModel
        # @!attribute [r] id
        #   The unique id for the payment.
        #
        #   @return [String, nil]
        optional :id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :id

        # @!attribute company_debit
        #
        #   @return [FinchAPI::Models::Money, nil]
        optional :company_debit, -> { FinchAPI::Models::Money }, nil?: true

        # @!attribute debit_date
        #
        #   @return [String, nil]
        optional :debit_date, String, nil?: true

        # @!attribute employee_taxes
        #
        #   @return [FinchAPI::Models::Money, nil]
        optional :employee_taxes, -> { FinchAPI::Models::Money }, nil?: true

        # @!attribute employer_taxes
        #
        #   @return [FinchAPI::Models::Money, nil]
        optional :employer_taxes, -> { FinchAPI::Models::Money }, nil?: true

        # @!attribute gross_pay
        #
        #   @return [FinchAPI::Models::Money, nil]
        optional :gross_pay, -> { FinchAPI::Models::Money }, nil?: true

        # @!attribute individual_ids
        #   Array of every individual on this payment.
        #
        #   @return [Array<String>, nil]
        optional :individual_ids, FinchAPI::ArrayOf[String], nil?: true

        # @!attribute net_pay
        #
        #   @return [FinchAPI::Models::Money, nil]
        optional :net_pay, -> { FinchAPI::Models::Money }, nil?: true

        # @!attribute pay_date
        #
        #   @return [String, nil]
        optional :pay_date, String, nil?: true

        # @!attribute pay_frequencies
        #   List of pay frequencies associated with this payment.
        #
        #   @return [Array<Symbol, FinchAPI::Models::HRIS::Payment::PayFrequency>, nil]
        optional :pay_frequencies,
                 -> { FinchAPI::ArrayOf[enum: FinchAPI::Models::HRIS::Payment::PayFrequency] },
                 nil?: true

        # @!attribute pay_group_ids
        #   Array of the Finch id (uuidv4) of every pay group associated with this payment.
        #
        #   @return [Array<String>, nil]
        optional :pay_group_ids, FinchAPI::ArrayOf[String], nil?: true

        # @!attribute pay_period
        #   The pay period object.
        #
        #   @return [FinchAPI::Models::HRIS::Payment::PayPeriod, nil]
        optional :pay_period, -> { FinchAPI::Models::HRIS::Payment::PayPeriod }, nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param company_debit [FinchAPI::Models::Money, nil]
        #   # @param debit_date [String, nil]
        #   # @param employee_taxes [FinchAPI::Models::Money, nil]
        #   # @param employer_taxes [FinchAPI::Models::Money, nil]
        #   # @param gross_pay [FinchAPI::Models::Money, nil]
        #   # @param individual_ids [Array<String>, nil]
        #   # @param net_pay [FinchAPI::Models::Money, nil]
        #   # @param pay_date [String, nil]
        #   # @param pay_frequencies [Array<Symbol, FinchAPI::Models::HRIS::Payment::PayFrequency>, nil]
        #   # @param pay_group_ids [Array<String>, nil]
        #   # @param pay_period [FinchAPI::Models::HRIS::Payment::PayPeriod, nil]
        #   #
        #   def initialize(
        #     id: nil,
        #     company_debit: nil,
        #     debit_date: nil,
        #     employee_taxes: nil,
        #     employer_taxes: nil,
        #     gross_pay: nil,
        #     individual_ids: nil,
        #     net_pay: nil,
        #     pay_date: nil,
        #     pay_frequencies: nil,
        #     pay_group_ids: nil,
        #     pay_period: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        module PayFrequency
          extend FinchAPI::Enum

          ANNUALLY = :annually
          SEMI_ANNUALLY = :semi_annually
          QUARTERLY = :quarterly
          MONTHLY = :monthly
          SEMI_MONTHLY = :semi_monthly
          BI_WEEKLY = :bi_weekly
          WEEKLY = :weekly
          DAILY = :daily
          OTHER = :other

          finalize!
        end

        class PayPeriod < FinchAPI::BaseModel
          # @!attribute end_date
          #
          #   @return [String, nil]
          optional :end_date, String, nil?: true

          # @!attribute start_date
          #
          #   @return [String, nil]
          optional :start_date, String, nil?: true

          # @!parse
          #   # The pay period object.
          #   #
          #   # @param end_date [String, nil]
          #   # @param start_date [String, nil]
          #   #
          #   def initialize(end_date: nil, start_date: nil, **) = super

          # def initialize: (Hash | FinchAPI::BaseModel) -> void
        end
      end
    end
  end
end
