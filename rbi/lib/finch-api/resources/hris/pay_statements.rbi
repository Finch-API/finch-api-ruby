# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class PayStatements
        sig do
          params(
            requests: T::Array[FinchAPI::Models::HRIS::PayStatementRetrieveManyParams::Request],
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::ResponsesPage[FinchAPI::Models::HRIS::PayStatementResponse])
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
