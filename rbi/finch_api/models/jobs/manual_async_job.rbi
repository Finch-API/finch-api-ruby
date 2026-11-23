# typed: strong

module FinchAPI
  module Models
    module Jobs
      class ManualAsyncJob < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(FinchAPI::Jobs::ManualAsyncJob, FinchAPI::Internal::AnyHash)
          end

        # Specific information about the job, such as individual statuses for batch jobs.
        sig { returns(T.nilable(T::Array[T.nilable(T.anything)])) }
        attr_accessor :body

        sig { returns(String) }
        attr_accessor :job_id

        # The datetime by which the job is expected to be completed. Only returned for
        # jobs that include requests Finch processes manually (assisted).
        sig { returns(Time) }
        attr_accessor :sla_deadline

        sig { returns(FinchAPI::Jobs::ManualAsyncJob::Status::TaggedSymbol) }
        attr_accessor :status

        sig do
          params(
            body: T.nilable(T::Array[T.nilable(T.anything)]),
            job_id: String,
            sla_deadline: Time,
            status: FinchAPI::Jobs::ManualAsyncJob::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Specific information about the job, such as individual statuses for batch jobs.
          body:,
          job_id:,
          # The datetime by which the job is expected to be completed. Only returned for
          # jobs that include requests Finch processes manually (assisted).
          sla_deadline:,
          status:
        )
        end

        sig do
          override.returns(
            {
              body: T.nilable(T::Array[T.nilable(T.anything)]),
              job_id: String,
              sla_deadline: Time,
              status: FinchAPI::Jobs::ManualAsyncJob::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Status
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, FinchAPI::Jobs::ManualAsyncJob::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              FinchAPI::Jobs::ManualAsyncJob::Status::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :in_progress,
              FinchAPI::Jobs::ManualAsyncJob::Status::TaggedSymbol
            )
          ERROR =
            T.let(:error, FinchAPI::Jobs::ManualAsyncJob::Status::TaggedSymbol)
          COMPLETE =
            T.let(
              :complete,
              FinchAPI::Jobs::ManualAsyncJob::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[FinchAPI::Jobs::ManualAsyncJob::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
