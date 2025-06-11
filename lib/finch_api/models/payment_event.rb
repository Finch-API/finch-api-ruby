# frozen_string_literal: true

module FinchAPI
  module Models
    class PaymentEvent < FinchAPI::Models::BaseWebhookEvent
      # @!attribute data
      #
      #   @return [FinchAPI::Models::PaymentEvent::Data, nil]
      optional :data, -> { FinchAPI::PaymentEvent::Data }

      # @!attribute event_type
      #
      #   @return [Symbol, FinchAPI::Models::PaymentEvent::EventType, nil]
      optional :event_type, enum: -> { FinchAPI::PaymentEvent::EventType }

      # @!method initialize(data: nil, event_type: nil)
      #   @param data [FinchAPI::Models::PaymentEvent::Data]
      #   @param event_type [Symbol, FinchAPI::Models::PaymentEvent::EventType]

      class Data < FinchAPI::Internal::Type::BaseModel
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

      module EventType
        extend FinchAPI::Internal::Type::Enum

        PAYMENT_CREATED = :"payment.created"
        PAYMENT_UPDATED = :"payment.updated"
        PAYMENT_DELETED = :"payment.deleted"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
