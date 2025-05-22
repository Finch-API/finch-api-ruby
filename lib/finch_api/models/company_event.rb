# frozen_string_literal: true

module FinchAPI
  module Models
    class CompanyEvent < FinchAPI::Models::BaseWebhookEvent
      # @!attribute data
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown], nil?: true

      # @!attribute event_type
      #
      #   @return [Symbol, FinchAPI::Models::CompanyEvent::EventType, nil]
      optional :event_type, enum: -> { FinchAPI::CompanyEvent::EventType }

      # @!method initialize(data: nil, event_type: nil)
      #   @param data [Hash{Symbol=>Object}, nil]
      #   @param event_type [Symbol, FinchAPI::Models::CompanyEvent::EventType]

      module EventType
        extend FinchAPI::Internal::Type::Enum

        COMPANY_UPDATED = :"company.updated"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
