# typed: strong

module FinchAPI
  module Models
    class WebhookEvent < FinchAPI::Union
      abstract!

      class << self
        sig do
          override
            .returns(
              [[NilClass, FinchAPI::Models::AccountUpdateEvent], [NilClass, FinchAPI::Models::JobCompletionEvent], [NilClass, FinchAPI::Models::CompanyEvent], [NilClass, FinchAPI::Models::DirectoryEvent], [NilClass, FinchAPI::Models::EmploymentEvent], [NilClass, FinchAPI::Models::IndividualEvent], [NilClass, FinchAPI::Models::PaymentEvent], [NilClass, FinchAPI::Models::PayStatementEvent]]
            )
        end
        private def variants
        end
      end
    end
  end
end
