# frozen_string_literal: true

module FinchAPI
  module Models
    class Money < FinchAPI::BaseModel
      # @!attribute amount
      #   Amount for money object (in cents)
      #
      #   @return [Integer, nil]
      optional :amount, Integer, nil?: true

      # @!attribute [r] currency
      #
      #   @return [String, nil]
      optional :currency, String

      # @!parse
      #   # @return [String]
      #   attr_writer :currency

      # @!parse
      #   # @param amount [Integer, nil]
      #   # @param currency [String]
      #   #
      #   def initialize(amount: nil, currency: nil, **) = super

      # def initialize: (Hash | FinchAPI::BaseModel) -> void
    end
  end
end
