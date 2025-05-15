# frozen_string_literal: true

module FinchAPI
  module Models
    module HRIS
      class PayStatementResponseBody < FinchAPI::Internal::Type::BaseModel
        # @!attribute paging
        #
        #   @return [FinchAPI::HRIS::PayStatementResponseBody::Paging]
        required :paging, -> { FinchAPI::HRIS::PayStatementResponseBody::Paging }

        # @!attribute pay_statements
        #
        #   @return [Array<FinchAPI::HRIS::PayStatement>]
        required :pay_statements, -> { FinchAPI::Internal::Type::ArrayOf[FinchAPI::HRIS::PayStatement] }

        # @!method initialize(paging:, pay_statements:)
        #   @param paging [FinchAPI::HRIS::PayStatementResponseBody::Paging]
        #   @param pay_statements [Array<FinchAPI::HRIS::PayStatement>]

        # @see FinchAPI::HRIS::PayStatementResponseBody#paging
        class Paging < FinchAPI::Internal::Type::BaseModel
          # @!attribute offset
          #   The current start index of the returned list of elements
          #
          #   @return [Integer]
          required :offset, Integer

          # @!attribute count
          #   The total number of elements for the entire query (not just the given page)
          #
          #   @return [Integer, nil]
          optional :count, Integer

          # @!method initialize(offset:, count: nil)
          #   @param offset [Integer] The current start index of the returned list of elements
          #
          #   @param count [Integer] The total number of elements for the entire query (not just the given page)
        end
      end
    end
  end
end
