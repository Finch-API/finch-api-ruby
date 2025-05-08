# typed: strong

module FinchAPI
  module Models
    module WebhookEvent
      extend FinchAPI::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            FinchAPI::AccountUpdateEvent,
            FinchAPI::CompanyEvent,
            FinchAPI::JobCompletionEvent,
            FinchAPI::DirectoryEvent,
            FinchAPI::EmploymentEvent,
            FinchAPI::IndividualEvent,
            FinchAPI::PaymentEvent,
            FinchAPI::PayStatementEvent
          )
        end

      sig { override.returns(T::Array[FinchAPI::WebhookEvent::Variants]) }
      def self.variants
      end
    end
  end
end
