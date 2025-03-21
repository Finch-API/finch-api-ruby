# typed: strong

module FinchAPI
  module Models
    class JobCompletionEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(FinchAPI::Models::JobCompletionEvent::Data)) }
      def data
      end

      sig do
        params(_: T.any(FinchAPI::Models::JobCompletionEvent::Data, FinchAPI::Util::AnyHash))
          .returns(T.any(FinchAPI::Models::JobCompletionEvent::Data, FinchAPI::Util::AnyHash))
      end
      def data=(_)
      end

      sig { returns(T.nilable(FinchAPI::Models::JobCompletionEvent::EventType::TaggedSymbol)) }
      def event_type
      end

      sig do
        params(_: FinchAPI::Models::JobCompletionEvent::EventType::TaggedSymbol)
          .returns(FinchAPI::Models::JobCompletionEvent::EventType::TaggedSymbol)
      end
      def event_type=(_)
      end

      sig do
        params(
          data: T.any(FinchAPI::Models::JobCompletionEvent::Data, FinchAPI::Util::AnyHash),
          event_type: FinchAPI::Models::JobCompletionEvent::EventType::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil)
      end

      sig do
        override
          .returns(
            {
              data: FinchAPI::Models::JobCompletionEvent::Data,
              event_type: FinchAPI::Models::JobCompletionEvent::EventType::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      class Data < FinchAPI::BaseModel
        # The id of the job which has completed.
        sig { returns(String) }
        def job_id
        end

        sig { params(_: String).returns(String) }
        def job_id=(_)
        end

        # The url to query the result of the job.
        sig { returns(String) }
        def job_url
        end

        sig { params(_: String).returns(String) }
        def job_url=(_)
        end

        sig { params(job_id: String, job_url: String).returns(T.attached_class) }
        def self.new(job_id:, job_url:)
        end

        sig { override.returns({job_id: String, job_url: String}) }
        def to_hash
        end
      end

      module EventType
        extend FinchAPI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::JobCompletionEvent::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::JobCompletionEvent::EventType::TaggedSymbol) }

        JOB_BENEFIT_CREATE_COMPLETED =
          T.let(:"job.benefit_create.completed", FinchAPI::Models::JobCompletionEvent::EventType::TaggedSymbol)
        JOB_BENEFIT_ENROLL_COMPLETED =
          T.let(:"job.benefit_enroll.completed", FinchAPI::Models::JobCompletionEvent::EventType::TaggedSymbol)
        JOB_BENEFIT_REGISTER_COMPLETED =
          T.let(:"job.benefit_register.completed", FinchAPI::Models::JobCompletionEvent::EventType::TaggedSymbol)
        JOB_BENEFIT_UNENROLL_COMPLETED =
          T.let(:"job.benefit_unenroll.completed", FinchAPI::Models::JobCompletionEvent::EventType::TaggedSymbol)
        JOB_BENEFIT_UPDATE_COMPLETED =
          T.let(:"job.benefit_update.completed", FinchAPI::Models::JobCompletionEvent::EventType::TaggedSymbol)
        JOB_DATA_SYNC_ALL_COMPLETED =
          T.let(:"job.data_sync_all.completed", FinchAPI::Models::JobCompletionEvent::EventType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[FinchAPI::Models::JobCompletionEvent::EventType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
