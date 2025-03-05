# typed: strong

module FinchAPI
  module Resources
    class Jobs
      class Manual
        sig do
          params(
            job_id: String,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::Models::Jobs::ManualAsyncJob)
        end
        def retrieve(job_id, request_options: {})
        end

        sig { params(client: FinchAPI::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
