# frozen_string_literal: true

module FinchAPI
  module Models
    module WebhookEvent
      extend FinchAPI::Internal::Type::Union

      discriminator :event_type

      variant :"account.updated", -> { FinchAPI::Models::AccountUpdateEvent }

      variant :"company.updated", -> { FinchAPI::Models::CompanyEvent }

      variant -> { FinchAPI::Models::JobCompletionEvent }

      variant -> { FinchAPI::Models::DirectoryEvent }

      variant -> { FinchAPI::Models::EmploymentEvent }

      variant -> { FinchAPI::Models::IndividualEvent }

      variant -> { FinchAPI::Models::PaymentEvent }

      variant -> { FinchAPI::Models::PayStatementEvent }

      # @!method self.variants
      #   @return [Array(FinchAPI::Models::AccountUpdateEvent, FinchAPI::Models::CompanyEvent, FinchAPI::Models::JobCompletionEvent, FinchAPI::Models::DirectoryEvent, FinchAPI::Models::EmploymentEvent, FinchAPI::Models::IndividualEvent, FinchAPI::Models::PaymentEvent, FinchAPI::Models::PayStatementEvent)]
    end
  end
end
