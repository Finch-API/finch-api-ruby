# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Directory
        sig do
          params(
            limit: Integer,
            offset: Integer,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::IndividualsPage[FinchAPI::Models::HRIS::IndividualInDirectory])
        end
        def list(limit: nil, offset: nil, request_options: {})
        end

        sig do
          params(
            limit: Integer,
            offset: Integer,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::IndividualsPage[FinchAPI::Models::HRIS::IndividualInDirectory])
        end
        def list_individuals(limit: nil, offset: nil, request_options: {})
        end

        sig { params(client: FinchAPI::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
