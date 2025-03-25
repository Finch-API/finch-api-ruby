# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Individuals
        # Read individual data, excluding income and employment data
        sig do
          params(
            options: T.nilable(T.any(FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options, FinchAPI::Util::AnyHash)),
            requests: T::Array[T.any(FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request, FinchAPI::Util::AnyHash)],
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash))
          )
            .returns(FinchAPI::ResponsesPage[FinchAPI::Models::HRIS::IndividualResponse])
        end
        def retrieve_many(options: nil, requests: nil, request_options: {})
        end

        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
