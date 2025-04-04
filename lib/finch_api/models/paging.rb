# frozen_string_literal: true

module FinchAPI
  module Models
    class Paging < FinchAPI::Internal::Type::BaseModel
      # @!attribute [r] count
      #   The total number of elements for the entire query (not just the given page)
      #
      #   @return [Integer, nil]
      optional :count, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :count

      # @!attribute [r] offset
      #   The current start index of the returned list of elements
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :offset

      # @!parse
      #   # @param count [Integer]
      #   # @param offset [Integer]
      #   #
      #   def initialize(count: nil, offset: nil, **) = super

      # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
    end
  end
end
