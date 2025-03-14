# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class JobCreateResponse < FinchAPI::BaseModel
        # The number of allowed refreshes per hour (per hour, fixed window)
        sig { returns(Integer) }
        def allowed_refreshes
        end

        sig { params(_: Integer).returns(Integer) }
        def allowed_refreshes=(_)
        end

        # The id of the job that has been created.
        sig { returns(String) }
        def job_id
        end

        sig { params(_: String).returns(String) }
        def job_id=(_)
        end

        # The url that can be used to retrieve the job status
        sig { returns(String) }
        def job_url
        end

        sig { params(_: String).returns(String) }
        def job_url=(_)
        end

        # The number of remaining refreshes available (per hour, fixed window)
        sig { returns(Integer) }
        def remaining_refreshes
        end

        sig { params(_: Integer).returns(Integer) }
        def remaining_refreshes=(_)
        end

        sig do
          params(allowed_refreshes: Integer, job_id: String, job_url: String, remaining_refreshes: Integer)
            .returns(T.attached_class)
        end
        def self.new(allowed_refreshes:, job_id:, job_url:, remaining_refreshes:)
        end

        sig do
          override
            .returns({
                       allowed_refreshes: Integer,
                       job_id: String,
                       job_url: String,
                       remaining_refreshes: Integer
                     })
        end
        def to_hash
        end
      end
    end
  end
end
