# typed: strong

module FinchAPI
  module Models
    class JobCompletionEvent < FinchAPI::Models::BaseWebhookEvent
      OrHash = T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

      sig { returns(T.nilable(FinchAPI::JobCompletionEvent::Data)) }
      attr_reader :data

      sig { params(data: FinchAPI::JobCompletionEvent::Data::OrHash).void }
      attr_writer :data

      sig do
        returns(
          T.nilable(FinchAPI::JobCompletionEvent::EventType::TaggedSymbol)
        )
      end
      attr_reader :event_type

      sig do
        params(
          event_type: FinchAPI::JobCompletionEvent::EventType::OrSymbol
        ).void
      end
      attr_writer :event_type

      sig do
        params(
          data: FinchAPI::JobCompletionEvent::Data::OrHash,
          event_type: FinchAPI::JobCompletionEvent::EventType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil)
      end

      sig do
        override.returns(
          {
            data: FinchAPI::JobCompletionEvent::Data,
            event_type: FinchAPI::JobCompletionEvent::EventType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

        # The id of the job which has completed.
        sig { returns(String) }
        attr_accessor :job_id

        # The url to query the result of the job.
        sig { returns(String) }
        attr_accessor :job_url

        sig do
          params(job_id: String, job_url: String).returns(T.attached_class)
        end
        def self.new(
          # The id of the job which has completed.
          job_id:,
          # The url to query the result of the job.
          job_url:
        )
        end

        sig { override.returns({ job_id: String, job_url: String }) }
        def to_hash
        end
      end

      module EventType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, FinchAPI::JobCompletionEvent::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        JOB_BENEFIT_CREATE_COMPLETED =
          T.let(
            :"job.benefit_create.completed",
            FinchAPI::JobCompletionEvent::EventType::TaggedSymbol
          )
        JOB_BENEFIT_ENROLL_COMPLETED =
          T.let(
            :"job.benefit_enroll.completed",
            FinchAPI::JobCompletionEvent::EventType::TaggedSymbol
          )
        JOB_BENEFIT_REGISTER_COMPLETED =
          T.let(
            :"job.benefit_register.completed",
            FinchAPI::JobCompletionEvent::EventType::TaggedSymbol
          )
        JOB_BENEFIT_UNENROLL_COMPLETED =
          T.let(
            :"job.benefit_unenroll.completed",
            FinchAPI::JobCompletionEvent::EventType::TaggedSymbol
          )
        JOB_BENEFIT_UPDATE_COMPLETED =
          T.let(
            :"job.benefit_update.completed",
            FinchAPI::JobCompletionEvent::EventType::TaggedSymbol
          )
        JOB_DATA_SYNC_ALL_COMPLETED =
          T.let(
            :"job.data_sync_all.completed",
            FinchAPI::JobCompletionEvent::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[FinchAPI::JobCompletionEvent::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
