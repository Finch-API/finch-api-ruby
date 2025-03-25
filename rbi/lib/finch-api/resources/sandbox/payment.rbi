# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Payment
        # Add a new sandbox payment
        sig do
          params(
            end_date: String,
            pay_statements: T::Array[T.any(FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement, FinchAPI::Util::AnyHash)],
            start_date: String,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash))
          )
            .returns(FinchAPI::Models::Sandbox::PaymentCreateResponse)
        end
        def create(end_date: nil, pay_statements: nil, start_date: nil, request_options: {})
        end

        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
