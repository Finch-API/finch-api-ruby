# typed: strong

module FinchAPI
  module Resources
    class Jobs
      class Automated
        # Enqueue an automated job.
        #
        #   `data_sync_all`: Enqueue a job to re-sync all data for a connection.
        #   `data_sync_all` has a concurrency limit of 1 job at a time per connection. This
        #   means that if this endpoint is called while a job is already in progress for
        #   this connection, Finch will return the `job_id` of the job that is currently in
        #   progress. Finch allows a fixed window rate limit of 1 forced refresh per hour
        #   per connection.
        #
        #   `w4_form_employee_sync`: Enqueues a job for sync W-4 data for a particular
        #   individual, identified by `individual_id`. This feature is currently in beta.
        #
        #   This endpoint is available for _Scale_ tier customers as an add-on. To request
        #   access to this endpoint, please contact your Finch account manager.
        sig do
          params(
            type: FinchAPI::Models::Jobs::AutomatedCreateParams::Type::OrSymbol,
            params: T.any(FinchAPI::Models::Jobs::AutomatedCreateParams::Params, FinchAPI::Internal::AnyHash),
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash))
          )
            .returns(FinchAPI::Models::Jobs::AutomatedCreateResponse)
        end
        def create(
          # The type of job to start.
          type:,
          params:,
          request_options: {}
        )
        end

        # Get an automated job by `job_id`.
        sig do
          params(
            job_id: String,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash))
          )
            .returns(FinchAPI::Models::Jobs::AutomatedAsyncJob)
        end
        def retrieve(job_id, request_options: {})
        end

        # Get all automated jobs. Automated jobs are completed by a machine. By default,
        #   jobs are sorted in descending order by submission time. For scheduled jobs such
        #   as data syncs, only the next scheduled job is shown.
        sig do
          params(
            limit: Integer,
            offset: Integer,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash))
          )
            .returns(FinchAPI::Models::Jobs::AutomatedListResponse)
        end
        def list(
          # Number of items to return
          limit: nil,
          # Index to start from (defaults to 0)
          offset: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
