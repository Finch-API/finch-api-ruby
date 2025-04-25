# frozen_string_literal: true

module FinchAPI
  module Models
    module Payroll
      # @see FinchAPI::Resources::Payroll::PayGroups#list
      class PayGroupListResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute id
        #   Finch id (uuidv4) for the pay group
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute name
        #   Name of the pay group
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute pay_frequencies
        #   List of pay frequencies associated with this pay group
        #
        #   @return [Array<Symbol, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency>, nil]
        optional :pay_frequencies,
                 -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency] }

        # @!method initialize(id: nil, name: nil, pay_frequencies: nil)
        #   @param id [String] Finch id (uuidv4) for the pay group
        #
        #   @param name [String] Name of the pay group
        #
        #   @param pay_frequencies [Array<Symbol, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency>] List of pay frequencies associated with this pay group

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
