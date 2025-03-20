# typed: strong

module FinchAPI
  module Models
    module WebhookEvent
      extend FinchAPI::Union

      Variants =
        type_template(:out) do
          {
            fixed: T.any(
              FinchAPI::Models::AccountUpdateEvent,
              FinchAPI::Models::CompanyEvent,
              FinchAPI::Models::JobCompletionEvent,
              FinchAPI::Models::DirectoryEvent,
              FinchAPI::Models::EmploymentEvent,
              FinchAPI::Models::IndividualEvent,
              FinchAPI::Models::PaymentEvent,
              FinchAPI::Models::PayStatementEvent
            )
          }
        end

      class << self
        sig do
          override
            .returns(
              [FinchAPI::Models::AccountUpdateEvent, FinchAPI::Models::CompanyEvent, FinchAPI::Models::JobCompletionEvent, FinchAPI::Models::DirectoryEvent, FinchAPI::Models::EmploymentEvent, FinchAPI::Models::IndividualEvent, FinchAPI::Models::PaymentEvent, FinchAPI::Models::PayStatementEvent]
            )
        end
        def variants
        end
      end
    end
  end
end
