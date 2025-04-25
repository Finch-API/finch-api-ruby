# typed: strong

module FinchAPI
  module Models
    class JobCompletionEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(FinchAPI::Models::JobCompletionEvent::Data)) }
      attr_reader :data

      sig { params(data: T.any(FinchAPI::Models::JobCompletionEvent::Data, FinchAPI::Internal::AnyHash)).void }
      attr_writer :data

      sig { returns(T.nilable(FinchAPI::Models::JobCompletionEvent::EventType::TaggedSymbol)) }
      attr_reader :event_type

      sig { params(event_type: FinchAPI::Models::JobCompletionEvent::EventType::OrSymbol).void }
      attr_writer :event_type

      sig do
        params(
          data: T.any(FinchAPI::Models::JobCompletionEvent::Data, FinchAPI::Internal::AnyHash),
          event_type: FinchAPI::Models::JobCompletionEvent::EventType::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil); end

      sig do
        override
          .returns(
            {
              data: FinchAPI::Models::JobCompletionEvent::Data,
              event_type: FinchAPI::Models::JobCompletionEvent::EventType::TaggedSymbol
            }
          )
      end
      def to_hash; end

      class Data < FinchAPI::Internal::Type::BaseModel
        # The id of the job which has completed.
        sig { returns(String) }
        attr_accessor :job_id

        # The url to query the result of the job.
        sig { returns(String) }
        attr_accessor :job_url

        sig { params(job_id: String, job_url: String).returns(T.attached_class) }
        def self.new(
          # The id of the job which has completed.
          job_id:,
          # The url to query the result of the job.
          job_url:
        ); end
        sig { override.returns({job_id: String, job_url: String}) }
        def to_hash; end
      end

      module EventType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::JobCompletionEvent::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

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

        sig { override.returns(T::Array[FinchAPI::Models::JobCompletionEvent::EventType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
