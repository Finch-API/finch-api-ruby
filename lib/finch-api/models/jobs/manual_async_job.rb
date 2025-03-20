# frozen_string_literal: true

module FinchAPI
  module Models
    module Jobs
      class ManualAsyncJob < FinchAPI::BaseModel
        # @!attribute body
        #   Specific information about the job, such as individual statuses for batch jobs.
        #
        #   @return [Array<Object>, nil]
        required :body, FinchAPI::ArrayOf[FinchAPI::Unknown], nil?: true

        # @!attribute job_id
        #
        #   @return [String]
        required :job_id, String

        # @!attribute status
        #
        #   @return [Symbol, FinchAPI::Models::Jobs::ManualAsyncJob::Status]
        required :status, enum: -> { FinchAPI::Models::Jobs::ManualAsyncJob::Status }

        # @!parse
        #   # @param body [Array<Object>, nil]
        #   # @param job_id [String]
        #   # @param status [Symbol, FinchAPI::Models::Jobs::ManualAsyncJob::Status]
        #   #
        #   def initialize(body:, job_id:, status:, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void

        module Status
          extend FinchAPI::Enum

          PENDING = :pending
          IN_PROGRESS = :in_progress
          ERROR = :error
          COMPLETE = :complete

          finalize!

          class << self
            # @!parse
            #   # @return [Array<Symbol>]
            #   def values; end
          end
        end
      end
    end
  end
end
