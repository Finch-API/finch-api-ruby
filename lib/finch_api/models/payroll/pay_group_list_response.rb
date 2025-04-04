# frozen_string_literal: true

module FinchAPI
  module Models
    module Payroll
      # @see FinchAPI::Resources::Payroll::PayGroups#list
      class PayGroupListResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute [r] id
        #   Finch id (uuidv4) for the pay group
        #
        #   @return [String, nil]
        optional :id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :id

        # @!attribute [r] name
        #   Name of the pay group
        #
        #   @return [String, nil]
        optional :name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :name

        # @!attribute [r] pay_frequencies
        #   List of pay frequencies associated with this pay group
        #
        #   @return [Array<Symbol, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency>, nil]
        optional :pay_frequencies,
                 -> { FinchAPI::Internal::Type::ArrayOf[enum: FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency] }

        # @!parse
        #   # @return [Array<Symbol, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency>]
        #   attr_writer :pay_frequencies

        # @!parse
        #   # @param id [String]
        #   # @param name [String]
        #   # @param pay_frequencies [Array<Symbol, FinchAPI::Models::Payroll::PayGroupListResponse::PayFrequency>]
        #   #
        #   def initialize(id: nil, name: nil, pay_frequencies: nil, **) = super

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
