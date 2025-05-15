# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      # @see FinchAPI::Resources::HRIS::Payments#list
      class Payment < FinchAPI::Internal::Type::BaseModel
        # @!attribute id
        #   The unique id for the payment.
        #
        #   @return [String]
        required :id, String

        # @!attribute company_debit
        #
        #   @return [FinchAPI::Money, nil]
        required :company_debit, -> { FinchAPI::Money }, nil?: true

        # @!attribute debit_date
        #
        #   @return [String, nil]
        required :debit_date, String, nil?: true

        # @!attribute employee_taxes
        #
        #   @return [FinchAPI::Money, nil]
        required :employee_taxes, -> { FinchAPI::Money }, nil?: true

        # @!attribute employer_taxes
        #
        #   @return [FinchAPI::Money, nil]
        required :employer_taxes, -> { FinchAPI::Money }, nil?: true

        # @!attribute gross_pay
        #
        #   @return [FinchAPI::Money, nil]
        required :gross_pay, -> { FinchAPI::Money }, nil?: true

        # @!attribute individual_ids
        #   Array of every individual on this payment.
        #
        #   @return [Array<String>, nil]
        required :individual_ids, FinchAPI::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute net_pay
        #
        #   @return [FinchAPI::Money, nil]
        required :net_pay, -> { FinchAPI::Money }, nil?: true

        # @!attribute pay_date
        #
        #   @return [String, nil]
        required :pay_date, String, nil?: true

        # @!attribute pay_frequencies
        #   List of pay frequencies associated with this payment.
        #
        #   @return [Array<Symbol, FinchAPI::HRIS::Payment::PayFrequency>, nil]
        required :pay_frequencies,
                 -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::HRIS::Payment::PayFrequency] },
                 nil?: true

        # @!attribute pay_group_ids
        #   Array of the Finch id (uuidv4) of every pay group associated with this payment.
        #
        #   @return [Array<String>, nil]
        required :pay_group_ids, FinchAPI::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute pay_period
        #   The pay period object.
        #
        #   @return [FinchAPI::HRIS::Payment::PayPeriod, nil]
        required :pay_period, -> { FinchAPI::HRIS::Payment::PayPeriod }, nil?: true

        # @!method initialize(id:, company_debit:, debit_date:, employee_taxes:, employer_taxes:, gross_pay:, individual_ids:, net_pay:, pay_date:, pay_frequencies:, pay_group_ids:, pay_period:)
        #   @param id [String] The unique id for the payment.
        #
        #   @param company_debit [FinchAPI::Money, nil]
        #
        #   @param debit_date [String, nil]
        #
        #   @param employee_taxes [FinchAPI::Money, nil]
        #
        #   @param employer_taxes [FinchAPI::Money, nil]
        #
        #   @param gross_pay [FinchAPI::Money, nil]
        #
        #   @param individual_ids [Array<String>, nil] Array of every individual on this payment.
        #
        #   @param net_pay [FinchAPI::Money, nil]
        #
        #   @param pay_date [String, nil]
        #
        #   @param pay_frequencies [Array<Symbol, FinchAPI::HRIS::Payment::PayFrequency>, nil] List of pay frequencies associated with this payment.
        #
        #   @param pay_group_ids [Array<String>, nil] Array of the Finch id (uuidv4) of every pay group associated with this payment.
        #
        #   @param pay_period [FinchAPI::HRIS::Payment::PayPeriod, nil] The pay period object.

        module PayFrequency
          extend FinchAPI::Internal::Type::Enum

          ANNUALLY = :annually
          BI_WEEKLY = :bi_weekly
          DAILY = :daily
          MONTHLY = :monthly
          OTHER = :other
          QUARTERLY = :quarterly
          SEMI_ANNUALLY = :semi_annually
          SEMI_MONTHLY = :semi_monthly
          WEEKLY = :weekly

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see FinchAPI::HRIS::Payment#pay_period
        class PayPeriod < FinchAPI::Internal::Type::BaseModel
          # @!attribute end_date
          #
          #   @return [String, nil]
          required :end_date, String, nil?: true

          # @!attribute start_date
          #
          #   @return [String, nil]
          required :start_date, String, nil?: true

          # @!method initialize(end_date:, start_date:)
          #   The pay period object.
          #
          #   @param end_date [String, nil]
          #   @param start_date [String, nil]
        end
      end
    end
  end
end
