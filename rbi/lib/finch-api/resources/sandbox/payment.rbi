# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Payment
        sig do
          params(
            end_date: String,
            pay_statements: T::Array[FinchAPI::Models::Sandbox::PaymentCreateParams::PayStatement],
            start_date: String,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::Models::Sandbox::PaymentCreateResponse)
        end
        def create(end_date: nil, pay_statements: nil, start_date: nil, request_options: {})
        end

        sig { params(client: FinchAPI::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
