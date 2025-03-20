# typed: strong

module FinchAPI
  module Models
    module Jobs
      class ManualAsyncJob < FinchAPI::BaseModel
        # Specific information about the job, such as individual statuses for batch jobs.
        sig { returns(T.nilable(T::Array[T.anything])) }
        def body
        end

        sig { params(_: T.nilable(T::Array[T.anything])).returns(T.nilable(T::Array[T.anything])) }
        def body=(_)
        end

        sig { returns(String) }
        def job_id
        end

        sig { params(_: String).returns(String) }
        def job_id=(_)
        end

        sig { returns(FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol) }
        def status
        end

        sig do
          params(_: FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol)
            .returns(FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol)
        end
        def status=(_)
        end

        sig do
          params(
            body: T.nilable(T::Array[T.anything]),
            job_id: String,
            status: FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(body:, job_id:, status:)
        end

        sig do
          override
            .returns(
              {
                body: T.nilable(T::Array[T.anything]),
                job_id: String,
                status: FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol
              }
            )
        end
        def to_hash
        end

        module Status
          extend FinchAPI::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Jobs::ManualAsyncJob::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol) }

          PENDING = T.let(:pending, FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol)
          IN_PROGRESS = T.let(:in_progress, FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol)
          ERROR = T.let(:error, FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol)
          COMPLETE = T.let(:complete, FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
