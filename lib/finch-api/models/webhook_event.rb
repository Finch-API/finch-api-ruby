# frozen_string_literal: true

module FinchAPI
  module Models
    # @abstract
    #
    class WebhookEvent < FinchAPI::Union
      discriminator :event_type

      variant :"account.updated", -> { FinchAPI::Models::AccountUpdateEvent }

      variant :"company.updated", -> { FinchAPI::Models::CompanyEvent }

      variant -> { FinchAPI::Models::JobCompletionEvent }

      variant -> { FinchAPI::Models::DirectoryEvent }

      variant -> { FinchAPI::Models::EmploymentEvent }

      variant -> { FinchAPI::Models::IndividualEvent }

      variant -> { FinchAPI::Models::PaymentEvent }

      variant -> { FinchAPI::Models::PayStatementEvent }
    end
  end
end
