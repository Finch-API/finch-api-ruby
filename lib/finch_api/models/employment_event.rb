# frozen_string_literal: true

module FinchAPI
  module Models
    class EmploymentEvent < FinchAPI::Models::BaseWebhookEvent
      # @!attribute data
      #
      #   @return [FinchAPI::Models::EmploymentEvent::Data, nil]
      optional :data, -> { FinchAPI::Models::EmploymentEvent::Data }

      # @!attribute event_type
      #
      #   @return [Symbol, FinchAPI::Models::EmploymentEvent::EventType, nil]
      optional :event_type, enum: -> { FinchAPI::Models::EmploymentEvent::EventType }

      # @!method initialize(data: nil, event_type: nil)
      #   @param data [FinchAPI::Models::EmploymentEvent::Data]
      #   @param event_type [Symbol, FinchAPI::Models::EmploymentEvent::EventType]

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

        EMPLOYMENT_CREATED = :"employment.created"
        EMPLOYMENT_UPDATED = :"employment.updated"
        EMPLOYMENT_DELETED = :"employment.deleted"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
