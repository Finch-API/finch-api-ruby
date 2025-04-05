# typed: strong

module FinchAPI
  module Models
    module Jobs
      class ManualAsyncJob < FinchAPI::Internal::Type::BaseModel
        # Specific information about the job, such as individual statuses for batch jobs.
        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_accessor :body

        sig { returns(String) }
        attr_accessor :job_id

        sig { returns(FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol) }
        attr_accessor :status

        sig do
          params(
            body: T.nilable(T::Array[T.anything]),
            job_id: String,
            status: FinchAPI::Models::Jobs::ManualAsyncJob::Status::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(body:, job_id:, status:); end

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
        def to_hash; end

        module Status
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Jobs::ManualAsyncJob::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol) }

          PENDING = T.let(:pending, FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol)
          IN_PROGRESS = T.let(:in_progress, FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol)
          ERROR = T.let(:error, FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol)
          COMPLETE = T.let(:complete, FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::Jobs::ManualAsyncJob::Status::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
