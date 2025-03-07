# typed: strong

module FinchAPI
  module Models
    class JobCompletionEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(FinchAPI::Models::JobCompletionEvent::Data)) }
      def data
      end

      sig { params(_: FinchAPI::Models::JobCompletionEvent::Data).returns(FinchAPI::Models::JobCompletionEvent::Data) }
      def data=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def event_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def event_type=(_)
      end

      sig { params(data: FinchAPI::Models::JobCompletionEvent::Data, event_type: Symbol).void }
      def initialize(data: nil, event_type: nil)
      end

      sig { override.returns({data: FinchAPI::Models::JobCompletionEvent::Data, event_type: Symbol}) }
      def to_hash
      end

      class Data < FinchAPI::BaseModel
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

        sig { params(job_id: String, job_url: String).void }
        def initialize(job_id:, job_url:)
        end

        sig { override.returns({job_id: String, job_url: String}) }
        def to_hash
        end
      end

      class EventType < FinchAPI::Enum
        abstract!

        JOB_BENEFIT_CREATE_COMPLETED = :"job.benefit_create.completed"
        JOB_BENEFIT_ENROLL_COMPLETED = :"job.benefit_enroll.completed"
        JOB_BENEFIT_REGISTER_COMPLETED = :"job.benefit_register.completed"
        JOB_BENEFIT_UNENROLL_COMPLETED = :"job.benefit_unenroll.completed"
        JOB_BENEFIT_UPDATE_COMPLETED = :"job.benefit_update.completed"
        JOB_DATA_SYNC_ALL_COMPLETED = :"job.data_sync_all.completed"

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
