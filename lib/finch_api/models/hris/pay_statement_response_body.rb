# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class PayStatementResponseBody < FinchAPI::BaseModel
        # @!attribute [r] paging
        #
        #   @return [FinchAPI::Models::Paging, nil]
        optional :paging, -> { FinchAPI::Models::Paging }

        # @!parse
        #   # @return [FinchAPI::Models::Paging]
        #   attr_writer :paging

        # @!attribute [r] pay_statements
        #   The array of pay statements for the current payment.
        #
        #   @return [Array<FinchAPI::Models::HRIS::PayStatement>, nil]
        optional :pay_statements, -> { FinchAPI::ArrayOf[FinchAPI::Models::HRIS::PayStatement] }

        # @!parse
        #   # @return [Array<FinchAPI::Models::HRIS::PayStatement>]
        #   attr_writer :pay_statements

        # @!parse
        #   # @param paging [FinchAPI::Models::Paging]
        #   # @param pay_statements [Array<FinchAPI::Models::HRIS::PayStatement>]
        #   #
        #   def initialize(paging: nil, pay_statements: nil, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void
      end
    end
  end
end
