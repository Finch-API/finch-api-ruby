# frozen_string_literal: true

module FinchAPI
  module Models
    module Sandbox
      # @see FinchAPI::Resources::Sandbox::Jobs#create
      class JobCreateResponse < FinchAPI::Internal::Type::BaseModel
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

        # @!method initialize(allowed_refreshes:, job_id:, job_url:, remaining_refreshes:)
        #   @param allowed_refreshes [Integer] The number of allowed refreshes per hour (per hour, fixed window)
        #
        #   @param job_id [String] The id of the job that has been created.
        #
        #   @param job_url [String] The url that can be used to retrieve the job status
        #
        #   @param remaining_refreshes [Integer] The number of remaining refreshes available (per hour, fixed window)
      end
    end
  end
end
