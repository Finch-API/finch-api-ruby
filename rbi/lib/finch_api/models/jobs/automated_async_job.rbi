# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedAsyncJob < FinchAPI::Internal::Type::BaseModel
        # The datetime the job completed.
        sig { returns(T.nilable(Time)) }
        attr_accessor :completed_at

        # The datetime when the job was created. for scheduled jobs, this will be the
        # initial connection time. For ad-hoc jobs, this will be the time the creation
        # request was received.
        sig { returns(Time) }
        attr_accessor :created_at

        # The id of the job that has been created.
        sig { returns(String) }
        attr_accessor :job_id

        # The url that can be used to retrieve the job status
        sig { returns(String) }
        attr_accessor :job_url

        # The input parameters for the job.
        sig { returns(T.nilable(FinchAPI::Models::Jobs::AutomatedAsyncJob::Params)) }
        attr_reader :params

        sig do
          params(
            params: T.nilable(T.any(FinchAPI::Models::Jobs::AutomatedAsyncJob::Params, FinchAPI::Internal::AnyHash))
          )
            .void
        end
        attr_writer :params

        # The datetime a job is scheduled to be run. For scheduled jobs, this datetime can
        # be in the future if the job has not yet been enqueued. For ad-hoc jobs, this
        # field will be null.
        sig { returns(T.nilable(Time)) }
        attr_accessor :scheduled_at

        # The datetime a job entered into the job queue.
        sig { returns(T.nilable(Time)) }
        attr_accessor :started_at

        sig { returns(FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol) }
        attr_accessor :status

        # The type of automated job
        sig { returns(FinchAPI::Models::Jobs::AutomatedAsyncJob::Type::TaggedSymbol) }
        attr_accessor :type

        sig do
          params(
            completed_at: T.nilable(Time),
            created_at: Time,
            job_id: String,
            job_url: String,
            params: T.nilable(T.any(FinchAPI::Models::Jobs::AutomatedAsyncJob::Params, FinchAPI::Internal::AnyHash)),
            scheduled_at: T.nilable(Time),
            started_at: T.nilable(Time),
            status: FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::OrSymbol,
            type: FinchAPI::Models::Jobs::AutomatedAsyncJob::Type::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
                status: FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol,
                type: FinchAPI::Models::Jobs::AutomatedAsyncJob::Type::TaggedSymbol
              }
            )
        end
        def to_hash; end

        class Params < FinchAPI::Internal::Type::BaseModel
          # The ID of the individual that the job was completed for.
          sig { returns(T.nilable(String)) }
          attr_reader :individual_id

          sig { params(individual_id: String).void }
          attr_writer :individual_id

          # The input parameters for the job.
          sig { params(individual_id: String).returns(T.attached_class) }
          def self.new(individual_id: nil); end

          sig { override.returns({individual_id: String}) }
          def to_hash; end
        end

        module Status
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol) }

          PENDING = T.let(:pending, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol)
          IN_PROGRESS = T.let(:in_progress, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol)
          COMPLETE = T.let(:complete, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol)
          ERROR = T.let(:error, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol)
          REAUTH_ERROR = T.let(:reauth_error, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol)
          PERMISSIONS_ERROR =
            T.let(:permissions_error, FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::Jobs::AutomatedAsyncJob::Status::TaggedSymbol]) }
          def self.values; end
        end

        # The type of automated job
        module Type
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Jobs::AutomatedAsyncJob::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, FinchAPI::Models::Jobs::AutomatedAsyncJob::Type::TaggedSymbol) }

          DATA_SYNC_ALL = T.let(:data_sync_all, FinchAPI::Models::Jobs::AutomatedAsyncJob::Type::TaggedSymbol)
          W4_FORM_EMPLOYEE_SYNC =
            T.let(:w4_form_employee_sync, FinchAPI::Models::Jobs::AutomatedAsyncJob::Type::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::Jobs::AutomatedAsyncJob::Type::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
