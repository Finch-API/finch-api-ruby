# frozen_string_literal: true

module FinchAPI
  module Models
    module Jobs
      # @see FinchAPI::Resources::Jobs::Automated#create
      class AutomatedCreateResponse < FinchAPI::Internal::Type::BaseModel
        # @!attribute allowed_refreshes
        #   The number of allowed refreshes per hour (per hour, fixed window)
        #
        #   @return [Integer]
        required :allowed_refreshes, Integer

        # @!attribute remaining_refreshes
        #   The number of remaining refreshes available (per hour, fixed window)
        #
        #   @return [Integer]
        required :remaining_refreshes, Integer

        # @!attribute job_id
        #   The id of the job that has been created.
        #
        #   @return [String, nil]
        optional :job_id, String

        # @!attribute job_url
        #   The url that can be used to retrieve the job status
        #
        #   @return [String, nil]
        optional :job_url, String

        # @!attribute retry_at
        #   ISO 8601 timestamp indicating when to retry the request
        #
        #   @return [String, nil]
        optional :retry_at, String

        # @!method initialize(allowed_refreshes:, remaining_refreshes:, job_id: nil, job_url: nil, retry_at: nil)
        #   @param allowed_refreshes [Integer] The number of allowed refreshes per hour (per hour, fixed window)
        #
        #   @param remaining_refreshes [Integer] The number of remaining refreshes available (per hour, fixed window)
        #
        #   @param job_id [String] The id of the job that has been created.
        #
        #   @param job_url [String] The url that can be used to retrieve the job status
        #
        #   @param retry_at [String] ISO 8601 timestamp indicating when to retry the request
      end
    end
  end
end
