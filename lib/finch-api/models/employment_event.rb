# frozen_string_literal: true

module FinchAPI
  module Models
    class EmploymentEvent < FinchAPI::Models::BaseWebhookEvent
      # @!attribute [r] data
      #
      #   @return [FinchAPI::Models::EmploymentEvent::Data, nil]
      optional :data, -> { FinchAPI::Models::EmploymentEvent::Data }

      # @!parse
      #   # @return [FinchAPI::Models::EmploymentEvent::Data]
      #   attr_writer :data

      # @!attribute [r] event_type
      #
      #   @return [Symbol, FinchAPI::Models::EmploymentEvent::EventType, nil]
      optional :event_type, enum: -> { FinchAPI::Models::EmploymentEvent::EventType }

      # @!parse
      #   # @return [Symbol, FinchAPI::Models::EmploymentEvent::EventType]
      #   attr_writer :event_type

      # @!parse
      #   # @param data [FinchAPI::Models::EmploymentEvent::Data]
      #   # @param event_type [Symbol, FinchAPI::Models::EmploymentEvent::EventType]
      #   #
      #   def initialize(data: nil, event_type: nil, **) = super

      # def initialize: (Hash | FinchAPI::BaseModel) -> void

      class Data < FinchAPI::BaseModel
        # @!attribute [r] individual_id
        #   The ID of the individual related to the event.
        #
        #   @return [String, nil]
        optional :individual_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :individual_id

        # @!parse
        #   # @param individual_id [String]
        #   #
        #   def initialize(individual_id: nil, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void
      end

      # @abstract
      #
      class EventType < FinchAPI::Enum
        EMPLOYMENT_CREATED = :"employment.created"
        EMPLOYMENT_UPDATED = :"employment.updated"
        EMPLOYMENT_DELETED = :"employment.deleted"

        finalize!
      end
    end
  end
end
