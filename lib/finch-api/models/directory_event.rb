# frozen_string_literal: true

module FinchAPI
  module Models
    class DirectoryEvent < FinchAPI::Models::BaseWebhookEvent
      # @!attribute [r] data
      #
      #   @return [FinchAPI::Models::DirectoryEvent::Data, nil]
      optional :data, -> { FinchAPI::Models::DirectoryEvent::Data }

      # @!parse
      #   # @return [FinchAPI::Models::DirectoryEvent::Data]
      #   attr_writer :data

      # @!attribute [r] event_type
      #
      #   @return [Symbol, FinchAPI::Models::DirectoryEvent::EventType, nil]
      optional :event_type, enum: -> { FinchAPI::Models::DirectoryEvent::EventType }

      # @!parse
      #   # @return [Symbol, FinchAPI::Models::DirectoryEvent::EventType]
      #   attr_writer :event_type

      # @!parse
      #   # @param data [FinchAPI::Models::DirectoryEvent::Data]
      #   # @param event_type [Symbol, FinchAPI::Models::DirectoryEvent::EventType]
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
      class EventType < FinchAPI::Enum
        DIRECTORY_CREATED = :"directory.created"
        DIRECTORY_UPDATED = :"directory.updated"
        DIRECTORY_DELETED = :"directory.deleted"

        finalize!
      end
    end
  end
end
