# frozen_string_literal: true

module FinchAPI
  module Models
    class JobCompletionEvent < FinchAPI::Models::BaseWebhookEvent
      # @!attribute data
      #
      #   @return [FinchAPI::Models::JobCompletionEvent::Data, nil]
      optional :data, -> { FinchAPI::JobCompletionEvent::Data }

      # @!attribute event_type
      #
      #   @return [Symbol, FinchAPI::Models::JobCompletionEvent::EventType, nil]
      optional :event_type, enum: -> { FinchAPI::JobCompletionEvent::EventType }

      # @!method initialize(data: nil, event_type: nil)
      #   @param data [FinchAPI::Models::JobCompletionEvent::Data]
      #   @param event_type [Symbol, FinchAPI::Models::JobCompletionEvent::EventType]

      class Data < FinchAPI::Internal::Type::BaseModel
        # @!attribute job_id
        #   The id of the job which has completed.
        #
        #   @return [String]
        required :job_id, String

        # @!attribute job_url
        #   The url to query the result of the job.
        #
        #   @return [String]
        required :job_url, String

        # @!method initialize(job_id:, job_url:)
        #   @param job_id [String] The id of the job which has completed.
        #
        #   @param job_url [String] The url to query the result of the job.
      end

      module EventType
        extend FinchAPI::Internal::Type::Enum

        JOB_BENEFIT_CREATE_COMPLETED = :"job.benefit_create.completed"
        JOB_BENEFIT_ENROLL_COMPLETED = :"job.benefit_enroll.completed"
        JOB_BENEFIT_REGISTER_COMPLETED = :"job.benefit_register.completed"
        JOB_BENEFIT_UNENROLL_COMPLETED = :"job.benefit_unenroll.completed"
        JOB_BENEFIT_UPDATE_COMPLETED = :"job.benefit_update.completed"
        JOB_DATA_SYNC_ALL_COMPLETED = :"job.data_sync_all.completed"
        JOB_W4_FORM_EMPLOYEE_SYNC_COMPLETED = :"job.w4_form_employee_sync.completed"
        JOB_INITIAL_DATA_SYNC_ORG_SUCCEEDED = :"job.initial_data_sync_org.succeeded"
        JOB_INITIAL_DATA_SYNC_PAYROLL_SUCCEEDED = :"job.initial_data_sync_payroll.succeeded"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
