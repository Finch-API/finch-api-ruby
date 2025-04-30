# frozen_string_literal: true

module FinchAPI
  module Models
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
