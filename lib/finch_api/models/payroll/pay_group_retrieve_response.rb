# frozen_string_literal: true

module FinchAPI
  module Models
    module Payroll
      # @see FinchAPI::Resources::Payroll::PayGroups#retrieve
      class PayGroupRetrieveResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute id
        #   Finch id (uuidv4) for the pay group
        #
        #   @return [String]
        required :id, String

        # @!attribute individual_ids
        #
        #   @return [Array<String>]
        required :individual_ids, FinchAPI::Internal::Type::ArrayOf[String]

        # @!attribute name
        #   Name of the pay group
        #
        #   @return [String]
        required :name, String

        # @!attribute pay_frequencies
        #   List of pay frequencies associated with this pay group
        #
        #   @return [Array<Symbol, FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency>]
        required :pay_frequencies,
                 -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency] }

        # @!method initialize(id:, individual_ids:, name:, pay_frequencies:)
        #   @param id [String] Finch id (uuidv4) for the pay group
        #
        #   @param individual_ids [Array<String>]
        #
        #   @param name [String] Name of the pay group
        #
        #   @param pay_frequencies [Array<Symbol, FinchAPI::Models::Payroll::PayGroupRetrieveResponse::PayFrequency>] List of pay frequencies associated with this pay group

        module PayFrequency
          extend FinchAPI::Internal::Type::Enum

          ANNUALLY = :annually
          SEMI_ANNUALLY = :semi_annually
          QUARTERLY = :quarterly
          MONTHLY = :monthly
          SEMI_MONTHLY = :semi_monthly
          BI_WEEKLY = :bi_weekly
          WEEKLY = :weekly
          DAILY = :daily
          OTHER = :other

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
