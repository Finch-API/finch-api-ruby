# frozen_string_literal: true

module FinchAPI
  module Models
    class IndividualEvent < FinchAPI::Models::BaseWebhookEvent
      # @!attribute [r] data
      #
      #   @return [FinchAPI::Models::IndividualEvent::Data, nil]
      optional :data, -> { FinchAPI::Models::IndividualEvent::Data }

      # @!parse
      #   # @return [FinchAPI::Models::IndividualEvent::Data]
      #   attr_writer :data

      # @!attribute [r] event_type
      #
      #   @return [Symbol, FinchAPI::Models::IndividualEvent::EventType, nil]
      optional :event_type, enum: -> { FinchAPI::Models::IndividualEvent::EventType }

      # @!parse
      #   # @return [Symbol, FinchAPI::Models::IndividualEvent::EventType]
      #   attr_writer :event_type

      # @!parse
      #   # @param data [FinchAPI::Models::IndividualEvent::Data]
      #   # @param event_type [Symbol, FinchAPI::Models::IndividualEvent::EventType]
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
      # @example
      # ```ruby
      # case event_type
      # in :"individual.created"
      #   # ...
      # in :"individual.updated"
      #   # ...
      # in :"individual.deleted"
      #   # ...
      # end
      # ```
      class EventType < FinchAPI::Enum
        INDIVIDUAL_CREATED = :"individual.created"
        INDIVIDUAL_UPDATED = :"individual.updated"
        INDIVIDUAL_DELETED = :"individual.deleted"

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
