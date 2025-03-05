# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Employments
        sig do
          params(
            requests: T::Array[FinchAPI::Models::HRIS::EmploymentRetrieveManyParams::Request],
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::ResponsesPage[FinchAPI::Models::HRIS::EmploymentDataResponse])
        end
        def retrieve_many(requests:, request_options: {})
        end

        sig { params(client: FinchAPI::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
