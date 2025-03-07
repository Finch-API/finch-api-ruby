# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedAsyncJob < FinchAPI::BaseModel
        sig { returns(T.nilable(Time)) }
        def completed_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def completed_at=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(String) }
        def job_id
        end

        sig { params(_: String).returns(String) }
        def job_id=(_)
        end

        sig { returns(String) }
        def job_url
        end

        sig { params(_: String).returns(String) }
        def job_url=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Jobs::AutomatedAsyncJob::Params)) }
        def params
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::Jobs::AutomatedAsyncJob::Params))
            .returns(T.nilable(FinchAPI::Models::Jobs::AutomatedAsyncJob::Params))
        end
        def params=(_)
        end

        sig { returns(T.nilable(Time)) }
        def scheduled_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def scheduled_at=(_)
        end

        sig { returns(T.nilable(Time)) }
        def started_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def started_at=(_)
        end

        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig do
          params(
            completed_at: T.nilable(Time),
            created_at: Time,
            job_id: String,
            job_url: String,
            params: T.nilable(FinchAPI::Models::Jobs::AutomatedAsyncJob::Params),
            scheduled_at: T.nilable(Time),
            started_at: T.nilable(Time),
            status: Symbol,
            type: Symbol
          )
            .void
        end
        def initialize(
          completed_at:,
          created_at:,
          job_id:,
          job_url:,
          params:,
          scheduled_at:,
          started_at:,
          status:,
          type:
        )
        end

        sig do
          override
            .returns(
              {
                completed_at: T.nilable(Time),
                created_at: Time,
                job_id: String,
                job_url: String,
                params: T.nilable(FinchAPI::Models::Jobs::AutomatedAsyncJob::Params),
                scheduled_at: T.nilable(Time),
                started_at: T.nilable(Time),
                status: Symbol,
                type: Symbol
              }
            )
        end
        def to_hash
        end

        class Params < FinchAPI::BaseModel
          sig { returns(T.nilable(String)) }
          def individual_id
          end

          sig { params(_: String).returns(String) }
          def individual_id=(_)
          end

          sig { params(individual_id: String).void }
          def initialize(individual_id: nil)
          end

          sig { override.returns({individual_id: String}) }
          def to_hash
          end
        end

        class Status < FinchAPI::Enum
          abstract!

          PENDING = :pending
          IN_PROGRESS = :in_progress
          COMPLETE = :complete
          ERROR = :error
          REAUTH_ERROR = :reauth_error
          PERMISSIONS_ERROR = :permissions_error

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class Type < FinchAPI::Enum
          abstract!

          DATA_SYNC_ALL = :data_sync_all
          W4_FORM_EMPLOYEE_SYNC = :w4_form_employee_sync

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
