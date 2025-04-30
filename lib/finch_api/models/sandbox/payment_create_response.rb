# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      # @see FinchAPI::Resources::Sandbox::Payment#create
      class PaymentCreateResponse < FinchAPI::Internal::Type::BaseModel
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

        # @!method initialize(pay_date:, payment_id:)
        #   @param pay_date [String] The date of the payment.
        #
        #   @param payment_id [String] The ID of the payment.
      end
    end
  end
end
