# frozen_string_literal: true

module FinchAPI
  module Models
    # @abstract
    #
    # @example
    # ```ruby
    # case webhook_event
    # in FinchAPI::Models::AccountUpdateEvent
    #   # ...
    # in FinchAPI::Models::JobCompletionEvent
    #   # ...
    # in FinchAPI::Models::CompanyEvent
    #   # ...
    # in FinchAPI::Models::DirectoryEvent
    #   # ...
    # in FinchAPI::Models::EmploymentEvent
    #   # ...
    # in FinchAPI::Models::IndividualEvent
    #   # ...
    # in FinchAPI::Models::PaymentEvent
    #   # ...
    # in FinchAPI::Models::PayStatementEvent
    #   # ...
    # end
    # ```
    class WebhookEvent < FinchAPI::Union
      discriminator :event_type

      variant -> { FinchAPI::Models::AccountUpdateEvent }

      variant -> { FinchAPI::Models::JobCompletionEvent }

      variant -> { FinchAPI::Models::CompanyEvent }

      variant -> { FinchAPI::Models::DirectoryEvent }

      variant -> { FinchAPI::Models::EmploymentEvent }

      variant -> { FinchAPI::Models::IndividualEvent }

      variant -> { FinchAPI::Models::PaymentEvent }

      variant -> { FinchAPI::Models::PayStatementEvent }
    end
  end
end
