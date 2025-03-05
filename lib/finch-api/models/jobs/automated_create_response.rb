# frozen_string_literal: true

module FinchAPI
  module Models
    module Jobs
      class AutomatedCreateResponse < FinchAPI::BaseModel
        # @!attribute allowed_refreshes
        #   The number of allowed refreshes per hour (per hour, fixed window)
        #
        #   @return [Integer]
        required :allowed_refreshes, Integer

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

        # @!attribute remaining_refreshes
        #   The number of remaining refreshes available (per hour, fixed window)
        #
        #   @return [Integer]
        required :remaining_refreshes, Integer

        # @!parse
        #   # @param allowed_refreshes [Integer]
        #   # @param job_id [String]
        #   # @param job_url [String]
        #   # @param remaining_refreshes [Integer]
        #   #
        #   def initialize(allowed_refreshes:, job_id:, job_url:, remaining_refreshes:, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void
      end
    end
  end
end
