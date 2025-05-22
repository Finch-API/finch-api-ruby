# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class PayStatementResponseBody < FinchAPI::Internal::Type::BaseModel
        # @!attribute paging
        #
        #   @return [FinchAPI::Models::Paging, nil]
        optional :paging, -> { FinchAPI::Paging }

        # @!attribute pay_statements
        #   The array of pay statements for the current payment.
        #
        #   @return [Array<FinchAPI::Models::HRIS::PayStatement>, nil]
        optional :pay_statements, -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::PayStatement] }

        # @!method initialize(paging: nil, pay_statements: nil)
        #   @param paging [FinchAPI::Models::Paging]
        #
        #   @param pay_statements [Array<FinchAPI::Models::HRIS::PayStatement>] The array of pay statements for the current payment.
      end
    end
  end
end
