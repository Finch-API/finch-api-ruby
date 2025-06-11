# frozen_string_literal: true

module FinchAPI
  module Models
    module WebhookEvent
      extend FinchAPI::Internal::Type::Union

      discriminator :event_type

      variant :"account.updated", -> { FinchAPI::AccountUpdateEvent }

      variant :"company.updated", -> { FinchAPI::CompanyEvent }

      variant -> { FinchAPI::JobCompletionEvent }

      variant -> { FinchAPI::DirectoryEvent }

      variant -> { FinchAPI::EmploymentEvent }

      variant -> { FinchAPI::IndividualEvent }

      variant -> { FinchAPI::PaymentEvent }

      variant -> { FinchAPI::PayStatementEvent }

      # @!method self.variants
      #   @return [Array(FinchAPI::Models::AccountUpdateEvent, FinchAPI::Models::CompanyEvent, FinchAPI::Models::JobCompletionEvent, FinchAPI::Models::DirectoryEvent, FinchAPI::Models::EmploymentEvent, FinchAPI::Models::IndividualEvent, FinchAPI::Models::PaymentEvent, FinchAPI::Models::PayStatementEvent)]
    end
  end
end
