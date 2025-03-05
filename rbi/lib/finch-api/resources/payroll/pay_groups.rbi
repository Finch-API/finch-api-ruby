# typed: strong

module FinchAPI
  module Resources
    class Payroll
      class PayGroups
        sig do
          params(
            pay_group_id: String,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::Models::Payroll::PayGroupRetrieveResponse)
        end
        def retrieve(pay_group_id, request_options: {})
        end

        sig do
          params(
            individual_id: String,
            pay_frequencies: T::Array[String],
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::SinglePage[FinchAPI::Models::Payroll::PayGroupListResponse])
        end
        def list(individual_id: nil, pay_frequencies: nil, request_options: {})
        end

        sig { params(client: FinchAPI::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
