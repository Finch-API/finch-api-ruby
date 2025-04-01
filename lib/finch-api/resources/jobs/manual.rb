# frozen_string_literal: true

module FinchAPI
  module Resources
    class Jobs
      class Manual
        # Get a manual job by `job_id`. Manual jobs are completed by a human and include
        #   Assisted Benefits jobs.
        #
        # @overload retrieve(job_id, request_options: {})
        #
        # @param job_id [String]
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::Jobs::ManualAsyncJob]
        #
        # @see FinchAPI::Models::Jobs::ManualRetrieveParams
        def retrieve(job_id, params = {})
          @client.request(
            method: :get,
            path: ["jobs/manual/%1$s", job_id],
            model: FinchAPI::Models::Jobs::ManualAsyncJob,
            options: params[:request_options]
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
