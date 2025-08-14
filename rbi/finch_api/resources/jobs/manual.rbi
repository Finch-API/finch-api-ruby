# typed: strong

module FinchAPI
  module Resources
    class Jobs
      class Manual
        # Get a manual job by `job_id`. Manual jobs are completed by a human and include
        # Assisted Benefits jobs.
        sig do
          params(
            job_id: String,
            entity_id: String,
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(FinchAPI::Jobs::ManualAsyncJob)
        end
        def retrieve(
          job_id,
          # The entity ID to use when authenticating with a multi-account token. Required
          # when using a multi-account token to specify which entity's data to access.
          # Example: `123e4567-e89b-12d3-a456-426614174000`
          entity_id: nil,
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
