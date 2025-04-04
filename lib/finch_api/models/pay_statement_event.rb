# frozen_string_literal: true

module FinchAPI
  module Models
    class PayStatementEvent < FinchAPI::Models::BaseWebhookEvent
      # @!attribute [r] data
      #
      #   @return [FinchAPI::Models::PayStatementEvent::Data, nil]
      optional :data, -> { FinchAPI::Models::PayStatementEvent::Data }

      # @!parse
      #   # @return [FinchAPI::Models::PayStatementEvent::Data]
      #   attr_writer :data

      # @!attribute [r] event_type
      #
      #   @return [Symbol, FinchAPI::Models::PayStatementEvent::EventType, nil]
      optional :event_type, enum: -> { FinchAPI::Models::PayStatementEvent::EventType }

      # @!parse
      #   # @return [Symbol, FinchAPI::Models::PayStatementEvent::EventType]
      #   attr_writer :event_type

      # @!parse
      #   # @param data [FinchAPI::Models::PayStatementEvent::Data]
      #   # @param event_type [Symbol, FinchAPI::Models::PayStatementEvent::EventType]
      #   #
      #   def initialize(data: nil, event_type: nil, **) = super

      # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void

      class Data < FinchAPI::Internal::Type::BaseModel
        # @!attribute [r] individual_id
        #   The ID of the individual associated with the pay statement.
        #
        #   @return [String, nil]
        optional :individual_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :individual_id

        # @!attribute [r] payment_id
        #   The ID of the payment associated with the pay statement.
        #
        #   @return [String, nil]
        optional :payment_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :payment_id

        # @!parse
        #   # @param individual_id [String]
        #   # @param payment_id [String]
        #   #
        #   def initialize(individual_id: nil, payment_id: nil, **) = super

        # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
      end

      module EventType
        extend FinchAPI::Internal::Type::Enum

        PAY_STATEMENT_CREATED = :"pay_statement.created"
        PAY_STATEMENT_UPDATED = :"pay_statement.updated"
        PAY_STATEMENT_DELETED = :"pay_statement.deleted"

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
