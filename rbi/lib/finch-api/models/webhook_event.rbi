# typed: strong

module FinchAPI
  module Models
    class WebhookEvent < FinchAPI::Union
      abstract!

      Variants = type_template(:out) do
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
    end
  end
end
