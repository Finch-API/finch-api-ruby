# frozen_string_literal: true

module FinchAPI
  module Models
    class JobCompletionEvent < FinchAPI::Models::BaseWebhookEvent
      # @!attribute [r] data
      #
      #   @return [FinchAPI::Models::JobCompletionEvent::Data, nil]
      optional :data, -> { FinchAPI::Models::JobCompletionEvent::Data }

      # @!parse
      #   # @return [FinchAPI::Models::JobCompletionEvent::Data]
      #   attr_writer :data

      # @!attribute [r] event_type
      #
      #   @return [Symbol, FinchAPI::Models::JobCompletionEvent::EventType, nil]
      optional :event_type, enum: -> { FinchAPI::Models::JobCompletionEvent::EventType }

      # @!parse
      #   # @return [Symbol, FinchAPI::Models::JobCompletionEvent::EventType]
      #   attr_writer :event_type

      # @!parse
      #   # @param data [FinchAPI::Models::JobCompletionEvent::Data]
      #   # @param event_type [Symbol, FinchAPI::Models::JobCompletionEvent::EventType]
      #   #
      #   def initialize(data: nil, event_type: nil, **) = super

      # def initialize: (Hash | FinchAPI::BaseModel) -> void

      class Data < FinchAPI::BaseModel
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

        # @!parse
        #   # @param job_id [String]
        #   # @param job_url [String]
        #   #
        #   def initialize(job_id:, job_url:, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void
      end

      module EventType
        extend FinchAPI::Enum

        JOB_BENEFIT_CREATE_COMPLETED = :"job.benefit_create.completed"
        JOB_BENEFIT_ENROLL_COMPLETED = :"job.benefit_enroll.completed"
        JOB_BENEFIT_REGISTER_COMPLETED = :"job.benefit_register.completed"
        JOB_BENEFIT_UNENROLL_COMPLETED = :"job.benefit_unenroll.completed"
        JOB_BENEFIT_UPDATE_COMPLETED = :"job.benefit_update.completed"
        JOB_DATA_SYNC_ALL_COMPLETED = :"job.data_sync_all.completed"

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
