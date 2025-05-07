# frozen_string_literal: true

module FinchAPI
  module Models
    class DirectoryEvent < FinchAPI::Models::BaseWebhookEvent
      # @!attribute data
      #
      #   @return [FinchAPI::DirectoryEvent::Data, nil]
      optional :data, -> { FinchAPI::DirectoryEvent::Data }

      # @!attribute event_type
      #
      #   @return [Symbol, FinchAPI::DirectoryEvent::EventType, nil]
      optional :event_type, enum: -> { FinchAPI::DirectoryEvent::EventType }

      # @!method initialize(data: nil, event_type: nil)
      #   @param data [FinchAPI::DirectoryEvent::Data]
      #   @param event_type [Symbol, FinchAPI::DirectoryEvent::EventType]

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

        DIRECTORY_CREATED = :"directory.created"
        DIRECTORY_UPDATED = :"directory.updated"
        DIRECTORY_DELETED = :"directory.deleted"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
