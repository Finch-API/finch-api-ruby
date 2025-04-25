# frozen_string_literal: true

module FinchAPI
  module Models
    class PayStatementEvent < FinchAPI::Models::BaseWebhookEvent
      # @!attribute data
      #
      #   @return [FinchAPI::Models::PayStatementEvent::Data, nil]
      optional :data, -> { FinchAPI::Models::PayStatementEvent::Data }

      # @!attribute event_type
      #
      #   @return [Symbol, FinchAPI::Models::PayStatementEvent::EventType, nil]
      optional :event_type, enum: -> { FinchAPI::Models::PayStatementEvent::EventType }

      # @!method initialize(data: nil, event_type: nil)
      #   @param data [FinchAPI::Models::PayStatementEvent::Data]
      #   @param event_type [Symbol, FinchAPI::Models::PayStatementEvent::EventType]

      class Data < FinchAPI::Internal::Type::BaseModel
        # @!attribute individual_id
        #   The ID of the individual associated with the pay statement.
        #
        #   @return [String, nil]
        optional :individual_id, String

        # @!attribute payment_id
        #   The ID of the payment associated with the pay statement.
        #
        #   @return [String, nil]
        optional :payment_id, String

        # @!method initialize(individual_id: nil, payment_id: nil)
        #   @param individual_id [String] The ID of the individual associated with the pay statement.
        #
        #   @param payment_id [String] The ID of the payment associated with the pay statement.
      end

      module EventType
        extend FinchAPI::Internal::Type::Enum

        PAY_STATEMENT_CREATED = :"pay_statement.created"
        PAY_STATEMENT_UPDATED = :"pay_statement.updated"
        PAY_STATEMENT_DELETED = :"pay_statement.deleted"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
