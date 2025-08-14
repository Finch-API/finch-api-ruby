# frozen_string_literal: true

module FinchAPI
  module Resources
    class Jobs
      class Manual
        # Some parameter documentations has been truncated, see
        # {FinchAPI::Models::Jobs::ManualRetrieveParams} for more details.
        #
        # Get a manual job by `job_id`. Manual jobs are completed by a human and include
        # Assisted Benefits jobs.
        #
        # @overload retrieve(job_id, entity_id: nil, request_options: {})
        #
        # @param job_id [String]
        #
        # @param entity_id [String] The entity ID to use when authenticating with a multi-account token. Required wh
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::Jobs::ManualAsyncJob]
        #
        # @see FinchAPI::Models::Jobs::ManualRetrieveParams
        def retrieve(job_id, params = {})
          parsed, options = FinchAPI::Jobs::ManualRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["jobs/manual/%1$s", job_id],
            query: parsed,
            model: FinchAPI::Jobs::ManualAsyncJob,
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
