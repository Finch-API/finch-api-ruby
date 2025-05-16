# typed: strong

module FinchAPI
  module Models
    class EmploymentEvent < FinchAPI::Models::BaseWebhookEvent
      OrHash =
        T.type_alias do
          T.any(FinchAPI::EmploymentEvent, FinchAPI::Internal::AnyHash)
        end

      sig { returns(T.nilable(FinchAPI::EmploymentEvent::Data)) }
      attr_reader :data

      sig { params(data: FinchAPI::EmploymentEvent::Data::OrHash).void }
      attr_writer :data

      sig do
        returns(T.nilable(FinchAPI::EmploymentEvent::EventType::TaggedSymbol))
      end
      attr_reader :event_type

      sig do
        params(event_type: FinchAPI::EmploymentEvent::EventType::OrSymbol).void
      end
      attr_writer :event_type

      sig do
        params(
          data: FinchAPI::EmploymentEvent::Data::OrHash,
          event_type: FinchAPI::EmploymentEvent::EventType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil)
      end

      sig do
        override.returns(
          {
            data: FinchAPI::EmploymentEvent::Data,
            event_type: FinchAPI::EmploymentEvent::EventType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(FinchAPI::EmploymentEvent::Data, FinchAPI::Internal::AnyHash)
          end

        # The ID of the individual related to the event.
        sig { returns(T.nilable(String)) }
        attr_reader :individual_id

        sig { params(individual_id: String).void }
        attr_writer :individual_id

        sig { params(individual_id: String).returns(T.attached_class) }
        def self.new(
          # The ID of the individual related to the event.
          individual_id: nil
        )
        end

        sig { override.returns({ individual_id: String }) }
        def to_hash
        end
      end

      module EventType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, FinchAPI::EmploymentEvent::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMPLOYMENT_CREATED =
          T.let(
            :"employment.created",
            FinchAPI::EmploymentEvent::EventType::TaggedSymbol
          )
        EMPLOYMENT_UPDATED =
          T.let(
            :"employment.updated",
            FinchAPI::EmploymentEvent::EventType::TaggedSymbol
          )
        EMPLOYMENT_DELETED =
          T.let(
            :"employment.deleted",
            FinchAPI::EmploymentEvent::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[FinchAPI::EmploymentEvent::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
