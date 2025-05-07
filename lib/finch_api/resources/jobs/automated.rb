# frozen_string_literal: true

module FinchAPI
  module Resources
    class Jobs
      class Automated
        # Enqueue an automated job.
        #
        # `data_sync_all`: Enqueue a job to re-sync all data for a connection.
        # `data_sync_all` has a concurrency limit of 1 job at a time per connection. This
        # means that if this endpoint is called while a job is already in progress for
        # this connection, Finch will return the `job_id` of the job that is currently in
        # progress. Finch allows a fixed window rate limit of 1 forced refresh per hour
        # per connection.
        #
        # `w4_form_employee_sync`: Enqueues a job for sync W-4 data for a particular
        # individual, identified by `individual_id`. This feature is currently in beta.
        #
        # This endpoint is available for _Scale_ tier customers as an add-on. To request
        # access to this endpoint, please contact your Finch account manager.
        #
        # @overload create(type:, params:, request_options: {})
        #
        # @param type [Symbol, FinchAPI::Jobs::AutomatedCreateParams::Type] The type of job to start.
        #
        # @param params [FinchAPI::Jobs::AutomatedCreateParams::Params]
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::Jobs::AutomatedCreateResponse]
        #
        # @see FinchAPI::Models::Jobs::AutomatedCreateParams
        def create(params)
          parsed, options = FinchAPI::Jobs::AutomatedCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "jobs/automated",
            body: parsed,
            model: FinchAPI::Models::Jobs::AutomatedCreateResponse,
            options: options
          )
        end

        # Get an automated job by `job_id`.
        #
        # @overload retrieve(job_id, request_options: {})
        #
        # @param job_id [String]
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Jobs::AutomatedAsyncJob]
        #
        # @see FinchAPI::Models::Jobs::AutomatedRetrieveParams
        def retrieve(job_id, params = {})
          @client.request(
            method: :get,
            path: ["jobs/automated/%1$s", job_id],
            model: FinchAPI::Jobs::AutomatedAsyncJob,
            options: params[:request_options]
          )
        end

        # Get all automated jobs. Automated jobs are completed by a machine. By default,
        # jobs are sorted in descending order by submission time. For scheduled jobs such
        # as data syncs, only the next scheduled job is shown.
        #
        # @overload list(limit: nil, offset: nil, request_options: {})
        #
        # @param limit [Integer] Number of items to return
        #
        # @param offset [Integer] Index to start from (defaults to 0)
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::Jobs::AutomatedListResponse]
        #
        # @see FinchAPI::Models::Jobs::AutomatedListParams
        def list(params = {})
          parsed, options = FinchAPI::Jobs::AutomatedListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "jobs/automated",
            query: parsed,
            model: FinchAPI::Models::Jobs::AutomatedListResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [FinchAPI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
