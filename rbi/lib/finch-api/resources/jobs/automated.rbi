# typed: strong

module FinchAPI
  module Resources
    class Jobs
      class Automated
        sig do
          params(
            type: Symbol,
            params: FinchAPI::Models::Jobs::AutomatedCreateParams::Params,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::Models::Jobs::AutomatedCreateResponse)
        end
        def create(type:, params:, request_options: {})
        end

        sig do
          params(
            job_id: String,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::Models::Jobs::AutomatedAsyncJob)
        end
        def retrieve(job_id, request_options: {})
        end

        sig do
          params(
            limit: Integer,
            offset: Integer,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::Page[FinchAPI::Models::Jobs::AutomatedAsyncJob])
        end
        def list(limit: nil, offset: nil, request_options: {})
        end

        sig { params(client: FinchAPI::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
