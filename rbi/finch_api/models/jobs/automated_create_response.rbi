# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedCreateResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Models::Jobs::AutomatedCreateResponse,
              FinchAPI::Internal::AnyHash
            )
          end

        # The number of allowed refreshes per hour (per hour, fixed window)
        sig { returns(Integer) }
        attr_accessor :allowed_refreshes

        # The number of remaining refreshes available (per hour, fixed window)
        sig { returns(Integer) }
        attr_accessor :remaining_refreshes

        # The id of the job that has been created.
        sig { returns(T.nilable(String)) }
        attr_reader :job_id

        sig { params(job_id: String).void }
        attr_writer :job_id

        # The url that can be used to retrieve the job status
        sig { returns(T.nilable(String)) }
        attr_reader :job_url

        sig { params(job_url: String).void }
        attr_writer :job_url

        # ISO 8601 timestamp indicating when to retry the request
        sig { returns(T.nilable(String)) }
        attr_reader :retry_at

        sig { params(retry_at: String).void }
        attr_writer :retry_at

        sig do
          params(
            allowed_refreshes: Integer,
            remaining_refreshes: Integer,
            job_id: String,
            job_url: String,
            retry_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The number of allowed refreshes per hour (per hour, fixed window)
          allowed_refreshes:,
          # The number of remaining refreshes available (per hour, fixed window)
          remaining_refreshes:,
          # The id of the job that has been created.
          job_id: nil,
          # The url that can be used to retrieve the job status
          job_url: nil,
          # ISO 8601 timestamp indicating when to retry the request
          retry_at: nil
        )
        end

        sig do
          override.returns(
            {
              allowed_refreshes: Integer,
              remaining_refreshes: Integer,
              job_id: String,
              job_url: String,
              retry_at: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
