# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Individuals
        sig do
          params(
            options: T.nilable(FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options),
            requests: T::Array[FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request],
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::ResponsesPage[FinchAPI::Models::HRIS::IndividualResponse])
        end
        def retrieve_many(options: nil, requests: nil, request_options: {})
        end

        sig { params(client: FinchAPI::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
