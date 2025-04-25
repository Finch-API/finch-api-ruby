# frozen_string_literal: true

module FinchAPI
  module Models
    class Paging < FinchAPI::Internal::Type::BaseModel
      # @!attribute count
      #   The total number of elements for the entire query (not just the given page)
      #
      #   @return [Integer, nil]
      optional :count, Integer

      # @!attribute offset
      #   The current start index of the returned list of elements
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(count: nil, offset: nil)
      #   @param count [Integer] The total number of elements for the entire query (not just the given page)
      #
      #   @param offset [Integer] The current start index of the returned list of elements
    end
  end
end
