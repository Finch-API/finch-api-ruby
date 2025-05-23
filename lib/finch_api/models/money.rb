# frozen_string_literal: true

module FinchAPI
  module Models
    class Money < FinchAPI::Internal::Type::BaseModel
      # @!attribute amount
      #   Amount for money object (in cents)
      #
      #   @return [Integer, nil]
      required :amount, Integer, nil?: true

      # @!attribute currency
      #
      #   @return [String]
      required :currency, String

      # @!method initialize(amount:, currency:)
      #   @param amount [Integer, nil] Amount for money object (in cents)
      #
      #   @param currency [String]
    end
  end
end
