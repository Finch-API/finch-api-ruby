# frozen_string_literal: true

module FinchAPI
  module Models
    class CompanyEvent < FinchAPI::Models::BaseWebhookEvent
      # @!attribute data
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, FinchAPI::HashOf[FinchAPI::Unknown], nil?: true

      # @!attribute [r] event_type
      #
      #   @return [Symbol, FinchAPI::Models::CompanyEvent::EventType, nil]
      optional :event_type, enum: -> { FinchAPI::Models::CompanyEvent::EventType }

      # @!parse
      #   # @return [Symbol, FinchAPI::Models::CompanyEvent::EventType]
      #   attr_writer :event_type

      # @!parse
      #   # @param data [Hash{Symbol=>Object}, nil]
      #   # @param event_type [Symbol, FinchAPI::Models::CompanyEvent::EventType]
      #   #
      #   def initialize(data: nil, event_type: nil, **) = super

      # def initialize: (Hash | FinchAPI::BaseModel) -> void

      # @abstract
      #
      class EventType < FinchAPI::Enum
        COMPANY_UPDATED = :"company.updated"

        finalize!
      end
    end
  end
end
