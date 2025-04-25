# frozen_string_literal: true

module FinchAPI
  module Models
    class Money < FinchAPI::Internal::Type::BaseModel
      # @!attribute amount
      #   Amount for money object (in cents)
      #
      #   @return [Integer, nil]
      optional :amount, Integer, nil?: true

      # @!attribute currency
      #
      #   @return [String, nil]
      optional :currency, String

      # @!method initialize(amount: nil, currency: nil)
      #   @param amount [Integer, nil] Amount for money object (in cents)
      #
      #   @param currency [String]
    end
  end
end
