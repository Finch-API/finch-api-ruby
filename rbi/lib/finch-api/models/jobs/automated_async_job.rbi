# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedAsyncJob < FinchAPI::BaseModel
        # The datetime the job completed.
        sig { returns(T.nilable(Time)) }
        def completed_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def completed_at=(_)
        end

        # The datetime when the job was created. for scheduled jobs, this will be the
        #   initial connection time. For ad-hoc jobs, this will be the time the creation
        #   request was received.
        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
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

        # The input parameters for the job.
        sig { returns(T.nilable(FinchAPI::Models::Jobs::AutomatedAsyncJob::Params)) }
        def params
        end

        sig do
          params(_: T.nilable(T.any(FinchAPI::Models::Jobs::AutomatedAsyncJob::Params, FinchAPI::Util::AnyHash)))
            .returns(T.nilable(T.any(FinchAPI::Models::Jobs::AutomatedAsyncJob::Params, FinchAPI::Util::AnyHash)))
        end
        def params=(_)
        end

        # The datetime a job is scheduled to be run. For scheduled jobs, this datetime can
        #   be in the future if the job has not yet been enqueued. For ad-hoc jobs, this
        #   field will be null.
        sig { returns(T.nilable(Time)) }
        def scheduled_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def scheduled_at=(_)
        end

        # The datetime a job entered into the job queue.
        sig { returns(T.nilable(Time)) }
        def started_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def started_at=(_)
        end

        sig { returns(FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol) }
        def status
        end

        sig do
          params(_: FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol)
            .returns(FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol)
        end
        def status=(_)
        end

        # The type of automated job
        sig { returns(FinchAPI::Models::Jobs::AutomatedAsyncJob::Type::TaggedSymbol) }
        def type
        end

        sig do
          params(_: FinchAPI::Models::Jobs::AutomatedAsyncJob::Type::TaggedSymbol)
            .returns(FinchAPI::Models::Jobs::AutomatedAsyncJob::Type::TaggedSymbol)
        end
        def type=(_)
        end

        sig do
          params(
            completed_at: T.nilable(Time),
            created_at: Time,
            job_id: String,
            job_url: String,
            params: T.nilable(T.any(FinchAPI::Models::Jobs::AutomatedAsyncJob::Params, FinchAPI::Util::AnyHash)),
            scheduled_at: T.nilable(Time),
            started_at: T.nilable(Time),
            status: FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::OrSymbol,
            type: FinchAPI::Models::Jobs::AutomatedAsyncJob::Type::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(completed_at:, created_at:, job_id:, job_url:, params:, scheduled_at:, started_at:, status:, type:)
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
                status: FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol,
                type: FinchAPI::Models::Jobs::AutomatedAsyncJob::Type::TaggedSymbol
              }
            )
        end
        def to_hash
        end

        class Params < FinchAPI::BaseModel
          # The ID of the individual that the job was completed for.
          sig { returns(T.nilable(String)) }
          def individual_id
          end

          sig { params(_: String).returns(String) }
          def individual_id=(_)
          end

          # The input parameters for the job.
          sig { params(individual_id: String).returns(T.attached_class) }
          def self.new(individual_id: nil)
          end

          sig { override.returns({individual_id: String}) }
          def to_hash
          end
        end

        module Status
          extend FinchAPI::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol) }

          PENDING = T.let(:pending, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol)
          IN_PROGRESS = T.let(:in_progress, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol)
          COMPLETE = T.let(:complete, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol)
          ERROR = T.let(:error, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol)
          REAUTH_ERROR = T.let(:reauth_error, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol)
          PERMISSIONS_ERROR =
            T.let(:permissions_error, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol]) }
            def values
            end
          end
        end

        # The type of automated job
        module Type
          extend FinchAPI::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Jobs::AutomatedAsyncJob::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::Jobs::AutomatedAsyncJob::Type::TaggedSymbol) }

          DATA_SYNC_ALL = T.let(:data_sync_all, FinchAPI::Models::Jobs::AutomatedAsyncJob::Type::TaggedSymbol)
          W4_FORM_EMPLOYEE_SYNC =
            T.let(:w4_form_employee_sync, FinchAPI::Models::Jobs::AutomatedAsyncJob::Type::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[FinchAPI::Models::Jobs::AutomatedAsyncJob::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
