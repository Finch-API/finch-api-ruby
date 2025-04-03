# typed: strong

module FinchAPI
  module Models
    module WebhookEvent
      extend FinchAPI::Internal::Type::Union

      sig do
        override
          .returns(
            [FinchAPI::Models::AccountUpdateEvent, FinchAPI::Models::CompanyEvent, FinchAPI::Models::JobCompletionEvent, FinchAPI::Models::DirectoryEvent, FinchAPI::Models::EmploymentEvent, FinchAPI::Models::IndividualEvent, FinchAPI::Models::PaymentEvent, FinchAPI::Models::PayStatementEvent]
          )
      end
      def self.variants
      end
    end
  end
end
