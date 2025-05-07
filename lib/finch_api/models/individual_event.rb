# frozen_string_literal: true

module FinchAPI
  module Models
    class IndividualEvent < FinchAPI::Models::BaseWebhookEvent
      # @!attribute data
      #
      #   @return [FinchAPI::IndividualEvent::Data, nil]
      optional :data, -> { FinchAPI::IndividualEvent::Data }

      # @!attribute event_type
      #
      #   @return [Symbol, FinchAPI::IndividualEvent::EventType, nil]
      optional :event_type, enum: -> { FinchAPI::IndividualEvent::EventType }

      # @!method initialize(data: nil, event_type: nil)
      #   @param data [FinchAPI::IndividualEvent::Data]
      #   @param event_type [Symbol, FinchAPI::IndividualEvent::EventType]

      class Data < FinchAPI::Internal::Type::BaseModel
        # @!attribute individual_id
        #   The ID of the individual related to the event.
        #
        #   @return [String, nil]
        optional :individual_id, String

        # @!method initialize(individual_id: nil)
        #   @param individual_id [String] The ID of the individual related to the event.
      end

      module EventType
        extend FinchAPI::Internal::Type::Enum

        INDIVIDUAL_CREATED = :"individual.created"
        INDIVIDUAL_UPDATED = :"individual.updated"
        INDIVIDUAL_DELETED = :"individual.deleted"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
