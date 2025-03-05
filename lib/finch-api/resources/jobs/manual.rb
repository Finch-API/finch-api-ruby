# frozen_string_literal: true

module FinchAPI
  module Resources
    class Jobs
      class Manual
        # Get a manual job by `job_id`. Manual jobs are completed by a human and include
        #   Assisted Benefits jobs.
        #
        # @param job_id [String]
        #
        # @param params [FinchAPI::Models::Jobs::ManualRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::Models::Jobs::ManualAsyncJob]
        #
        def retrieve(job_id, params = {})
          @client.request(
            method: :get,
            path: ["jobs/manual/%0s", job_id],
            model: FinchAPI::Models::Jobs::ManualAsyncJob,
            options: params[:request_options]
          )
        end

        # @param client [FinchAPI::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
