# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      class PaymentCreateResponse < FinchAPI::BaseModel
        # @!attribute pay_date
        #   The date of the payment.
        #
        #   @return [String]
        required :pay_date, String

        # @!attribute payment_id
        #   The ID of the payment.
        #
        #   @return [String]
        required :payment_id, String

        # @!parse
        #   # @param pay_date [String]
        #   # @param payment_id [String]
        #   #
        #   def initialize(pay_date:, payment_id:, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void
      end
    end
  end
end
