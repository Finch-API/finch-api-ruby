# typed: strong

module FinchAPI
  module Models
    class EmploymentEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(FinchAPI::Models::EmploymentEvent::Data)) }
      attr_reader :data

      sig { params(data: T.any(FinchAPI::Models::EmploymentEvent::Data, FinchAPI::Util::AnyHash)).void }
      attr_writer :data

      sig { returns(T.nilable(FinchAPI::Models::EmploymentEvent::EventType::TaggedSymbol)) }
      attr_reader :event_type

      sig { params(event_type: FinchAPI::Models::EmploymentEvent::EventType::OrSymbol).void }
      attr_writer :event_type

      sig do
        params(
          data: T.any(FinchAPI::Models::EmploymentEvent::Data, FinchAPI::Util::AnyHash),
          event_type: FinchAPI::Models::EmploymentEvent::EventType::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil)
      end

      sig do
        override
          .returns(
            {
              data: FinchAPI::Models::EmploymentEvent::Data,
              event_type: FinchAPI::Models::EmploymentEvent::EventType::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      class Data < FinchAPI::BaseModel
        # The ID of the individual related to the event.
        sig { returns(T.nilable(String)) }
        attr_reader :individual_id

        sig { params(individual_id: String).void }
        attr_writer :individual_id

        sig { params(individual_id: String).returns(T.attached_class) }
        def self.new(individual_id: nil)
        end

        sig { override.returns({individual_id: String}) }
        def to_hash
        end
      end

      module EventType
        extend FinchAPI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::EmploymentEvent::EventType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, FinchAPI::Models::EmploymentEvent::EventType::TaggedSymbol) }

        EMPLOYMENT_CREATED =
          T.let(:"employment.created", FinchAPI::Models::EmploymentEvent::EventType::TaggedSymbol)
        EMPLOYMENT_UPDATED =
          T.let(:"employment.updated", FinchAPI::Models::EmploymentEvent::EventType::TaggedSymbol)
        EMPLOYMENT_DELETED =
          T.let(:"employment.deleted", FinchAPI::Models::EmploymentEvent::EventType::TaggedSymbol)

        sig { override.returns(T::Array[FinchAPI::Models::EmploymentEvent::EventType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
