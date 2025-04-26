# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Individuals
        # Read individual data, excluding income and employment data
        sig do
          params(
            options: T.nilable(
              T.any(FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Options, FinchAPI::Internal::AnyHash)
            ),
            requests: T::Array[T.any(FinchAPI::Models::HRIS::IndividualRetrieveManyParams::Request, FinchAPI::Internal::AnyHash)],
            request_options: FinchAPI::RequestOpts
          )
            .returns(FinchAPI::Internal::ResponsesPage[FinchAPI::Models::HRIS::IndividualResponse])
        end
        def retrieve_many(options: nil, requests: nil, request_options: {}); end

        # @api private
        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
