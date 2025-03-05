# typed: strong

module FinchAPI
  module Models
    class WebhookEvent < FinchAPI::Union
      abstract!

      sig do
        override
          .returns(
            [[NilClass, FinchAPI::Models::AccountUpdateEvent], [NilClass, FinchAPI::Models::JobCompletionEvent], [NilClass, FinchAPI::Models::CompanyEvent], [NilClass, FinchAPI::Models::DirectoryEvent], [NilClass, FinchAPI::Models::EmploymentEvent], [NilClass, FinchAPI::Models::IndividualEvent], [NilClass, FinchAPI::Models::PaymentEvent], [NilClass, FinchAPI::Models::PayStatementEvent]]
          )
      end
      private_class_method def self.variants
      end
    end
  end
end
