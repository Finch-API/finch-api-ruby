# frozen_string_literal: true

module FinchAPI
  module Models
    module Jobs
      # @see FinchAPI::Resources::Jobs::Automated#retrieve
      class AutomatedAsyncJob < FinchAPI::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The datetime the job completed.
        #
        #   @return [Time, nil]
        required :completed_at, Time, nil?: true

        # @!attribute created_at
        #   The datetime when the job was created. for scheduled jobs, this will be the
        #   initial connection time. For ad-hoc jobs, this will be the time the creation
        #   request was received.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute job_id
        #   The id of the job that has been created.
        #
        #   @return [String]
        required :job_id, String

        # @!attribute job_url
        #   The url that can be used to retrieve the job status
        #
        #   @return [String]
        required :job_url, String

        # @!attribute params
        #   The input parameters for the job.
        #
        #   @return [FinchAPI::Models::Jobs::AutomatedAsyncJob::Params, nil]
        required :params, -> { FinchAPI::Models::Jobs::AutomatedAsyncJob::Params }, nil?: true

        # @!attribute scheduled_at
        #   The datetime a job is scheduled to be run. For scheduled jobs, this datetime can
        #   be in the future if the job has not yet been enqueued. For ad-hoc jobs, this
        #   field will be null.
        #
        #   @return [Time, nil]
        required :scheduled_at, Time, nil?: true

        # @!attribute started_at
        #   The datetime a job entered into the job queue.
        #
        #   @return [Time, nil]
        required :started_at, Time, nil?: true

        # @!attribute status
        #
        #   @return [Symbol, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status]
        required :status, enum: -> { FinchAPI::Models::Jobs::AutomatedAsyncJob::Status }

        # @!attribute type
        #   The type of automated job
        #
        #   @return [Symbol, FinchAPI::Models::Jobs::AutomatedAsyncJob::Type]
        required :type, enum: -> { FinchAPI::Models::Jobs::AutomatedAsyncJob::Type }

        # @!method initialize(completed_at:, created_at:, job_id:, job_url:, params:, scheduled_at:, started_at:, status:, type:)
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::Jobs::AutomatedAsyncJob} for more details.
        #
        #   @param completed_at [Time, nil] The datetime the job completed.
        #
        #   @param created_at [Time] The datetime when the job was created. for scheduled jobs, this will be the init
        #   ...
        #
        #   @param job_id [String] The id of the job that has been created.
        #
        #   @param job_url [String] The url that can be used to retrieve the job status
        #
        #   @param params [FinchAPI::Models::Jobs::AutomatedAsyncJob::Params, nil] The input parameters for the job.
        #
        #   @param scheduled_at [Time, nil] The datetime a job is scheduled to be run. For scheduled jobs, this datetime can
        #   ...
        #
        #   @param started_at [Time, nil] The datetime a job entered into the job queue.
        #
        #   @param status [Symbol, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status]
        #
        #   @param type [Symbol, FinchAPI::Models::Jobs::AutomatedAsyncJob::Type] The type of automated job

        # @see FinchAPI::Models::Jobs::AutomatedAsyncJob#params
        class Params < FinchAPI::Internal::Type::BaseModel
          # @!attribute individual_id
          #   The ID of the individual that the job was completed for.
          #
          #   @return [String, nil]
          optional :individual_id, String

          # @!method initialize(individual_id: nil)
          #   The input parameters for the job.
          #
          #   @param individual_id [String] The ID of the individual that the job was completed for.
        end

        # @see FinchAPI::Models::Jobs::AutomatedAsyncJob#status
        module Status
          extend FinchAPI::Internal::Type::Enum

          PENDING = :pending
          IN_PROGRESS = :in_progress
          COMPLETE = :complete
          ERROR = :error
          REAUTH_ERROR = :reauth_error
          PERMISSIONS_ERROR = :permissions_error

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of automated job
        #
        # @see FinchAPI::Models::Jobs::AutomatedAsyncJob#type
        module Type
          extend FinchAPI::Internal::Type::Enum

          DATA_SYNC_ALL = :data_sync_all
          W4_FORM_EMPLOYEE_SYNC = :w4_form_employee_sync

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
