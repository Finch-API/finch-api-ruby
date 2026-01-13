# typed: strong

module FinchAPI
  module Resources
    class Jobs
      class Manual
        # Check the status and outcome of a job by `job_id`. This includes all deductions
        # jobs including those for both automated and assisted integrations.
        sig do
          params(
            job_id: String,
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(FinchAPI::Jobs::ManualAsyncJob)
        end
        def retrieve(job_id, request_options: {})
        end

        # @api private
        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
