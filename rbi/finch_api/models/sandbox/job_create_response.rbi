# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class JobCreateResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Models::Sandbox::JobCreateResponse,
              FinchAPI::Internal::AnyHash
            )
          end

        # The number of allowed refreshes per hour (per hour, fixed window)
        sig { returns(Integer) }
        attr_accessor :allowed_refreshes

        # The id of the job that has been created.
        sig { returns(String) }
        attr_accessor :job_id

        # The url that can be used to retrieve the job status
        sig { returns(String) }
        attr_accessor :job_url

        # The number of remaining refreshes available (per hour, fixed window)
        sig { returns(Integer) }
        attr_accessor :remaining_refreshes

        sig do
          params(
            allowed_refreshes: Integer,
            job_id: String,
            job_url: String,
            remaining_refreshes: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The number of allowed refreshes per hour (per hour, fixed window)
          allowed_refreshes:,
          # The id of the job that has been created.
          job_id:,
          # The url that can be used to retrieve the job status
          job_url:,
          # The number of remaining refreshes available (per hour, fixed window)
          remaining_refreshes:
        )
        end

        sig do
          override.returns(
            {
              allowed_refreshes: Integer,
              job_id: String,
              job_url: String,
              remaining_refreshes: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
