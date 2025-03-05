# frozen_string_literal: true

module FinchAPI
  module Models
    class PaymentEvent < FinchAPI::Models::BaseWebhookEvent
      # @!attribute [r] data
      #
      #   @return [FinchAPI::Models::PaymentEvent::Data, nil]
      optional :data, -> { FinchAPI::Models::PaymentEvent::Data }

      # @!parse
      #   # @return [FinchAPI::Models::PaymentEvent::Data]
      #   attr_writer :data

      # @!attribute [r] event_type
      #
      #   @return [Symbol, FinchAPI::Models::PaymentEvent::EventType, nil]
      optional :event_type, enum: -> { FinchAPI::Models::PaymentEvent::EventType }

      # @!parse
      #   # @return [Symbol, FinchAPI::Models::PaymentEvent::EventType]
      #   attr_writer :event_type

      # @!parse
      #   # @param data [FinchAPI::Models::PaymentEvent::Data]
      #   # @param event_type [Symbol, FinchAPI::Models::PaymentEvent::EventType]
      #   #
      #   def initialize(data: nil, event_type: nil, **) = super

      # def initialize: (Hash | FinchAPI::BaseModel) -> void

      class Data < FinchAPI::BaseModel
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

      # @abstract
      #
      # @example
      # ```ruby
      # case event_type
      # in :"payment.created"
      #   # ...
      # in :"payment.updated"
      #   # ...
      # in :"payment.deleted"
      #   # ...
      # end
      # ```
      class EventType < FinchAPI::Enum
        PAYMENT_CREATED = :"payment.created"
        PAYMENT_UPDATED = :"payment.updated"
        PAYMENT_DELETED = :"payment.deleted"

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
