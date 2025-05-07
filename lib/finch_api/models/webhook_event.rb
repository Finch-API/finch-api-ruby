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
      #   @return [Array(FinchAPI::AccountUpdateEvent, FinchAPI::CompanyEvent, FinchAPI::JobCompletionEvent, FinchAPI::DirectoryEvent, FinchAPI::EmploymentEvent, FinchAPI::IndividualEvent, FinchAPI::PaymentEvent, FinchAPI::PayStatementEvent)]
    end
  end
end
