# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Payments
        sig do
          params(
            end_date: Date,
            start_date: Date,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::SinglePage[FinchAPI::Models::HRIS::Payment])
        end
        def list(end_date:, start_date:, request_options: {})
        end

        sig { params(client: FinchAPI::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
