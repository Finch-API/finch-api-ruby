# frozen_string_literal: true

module FinchAPI
  module Models
    module Payroll
      # @see FinchAPI::Resources::Payroll::PayGroups#list
      class PayGroupListResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute id
        #   Finch id (uuidv4) for the pay group
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   Name of the pay group
        #
        #   @return [String]
        required :name, String

        # @!attribute pay_frequencies
        #   List of pay frequencies associated with this pay group
        #
        #   @return [Array<Symbol, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency>]
        required :pay_frequencies,
                 -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency] }

        # @!method initialize(id:, name:, pay_frequencies:)
        #   @param id [String] Finch id (uuidv4) for the pay group
        #
        #   @param name [String] Name of the pay group
        #
        #   @param pay_frequencies [Array<Symbol, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency>] List of pay frequencies associated with this pay group

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
      end
    end
  end
end
