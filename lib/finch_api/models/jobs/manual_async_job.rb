# frozen_string_literal: true

module FinchAPI
  module Models
    module Jobs
      # @see FinchAPI::Resources::Jobs::Manual#retrieve
      class ManualAsyncJob < FinchAPI::Internal::Type::BaseModel
        # @!attribute body
        #   Specific information about the job, such as individual statuses for batch jobs.
        #
        #   @return [Array<Object>, nil]
        required :body, FinchAPI::Internal::Type::ArrayOf[FinchAPI::Internal::Type::Unknown], nil?: true

        # @!attribute job_id
        #
        #   @return [String]
        required :job_id, String

        # @!attribute status
        #
        #   @return [Symbol, FinchAPI::Models::Jobs::ManualAsyncJob::Status]
        required :status, enum: -> { FinchAPI::Models::Jobs::ManualAsyncJob::Status }

        # @!method initialize(body:, job_id:, status:)
        #   @param body [Array<Object>, nil] Specific information about the job, such as individual statuses for batch jobs.
        #
        #   @param job_id [String]
        #
        #   @param status [Symbol, FinchAPI::Models::Jobs::ManualAsyncJob::Status]

        # @see FinchAPI::Models::Jobs::ManualAsyncJob#status
        module Status
          extend FinchAPI::Internal::Type::Enum

          PENDING = :pending
          IN_PROGRESS = :in_progress
          ERROR = :error
          COMPLETE = :complete

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
