# typed: strong

module FinchAPI
  module Models
    module Jobs
      class ManualAsyncJob < FinchAPI::BaseModel
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

        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        sig { params(body: T.nilable(T::Array[T.anything]), job_id: String, status: Symbol).void }
        def initialize(body:, job_id:, status:)
        end

        sig { override.returns({body: T.nilable(T::Array[T.anything]), job_id: String, status: Symbol}) }
        def to_hash
        end

        class Status < FinchAPI::Enum
          abstract!

          PENDING = :pending
          IN_PROGRESS = :in_progress
          ERROR = :error
          COMPLETE = :complete

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
