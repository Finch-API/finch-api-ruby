# typed: strong

module FinchAPI
  module Models
    class IndividualEvent < FinchAPI::Models::BaseWebhookEvent
      OrHash =
        T.type_alias do
          T.any(FinchAPI::IndividualEvent, FinchAPI::Internal::AnyHash)
        end

      sig { returns(T.nilable(FinchAPI::IndividualEvent::Data)) }
      attr_reader :data

      sig { params(data: FinchAPI::IndividualEvent::Data::OrHash).void }
      attr_writer :data

      sig do
        returns(T.nilable(FinchAPI::IndividualEvent::EventType::TaggedSymbol))
      end
      attr_reader :event_type

      sig do
        params(event_type: FinchAPI::IndividualEvent::EventType::OrSymbol).void
      end
      attr_writer :event_type

      sig do
        params(
          data: FinchAPI::IndividualEvent::Data::OrHash,
          event_type: FinchAPI::IndividualEvent::EventType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil)
      end

      sig do
        override.returns(
          {
            data: FinchAPI::IndividualEvent::Data,
            event_type: FinchAPI::IndividualEvent::EventType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(FinchAPI::IndividualEvent::Data, FinchAPI::Internal::AnyHash)
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
          T.type_alias { T.all(Symbol, FinchAPI::IndividualEvent::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INDIVIDUAL_CREATED =
          T.let(
            :"individual.created",
            FinchAPI::IndividualEvent::EventType::TaggedSymbol
          )
        INDIVIDUAL_UPDATED =
          T.let(
            :"individual.updated",
            FinchAPI::IndividualEvent::EventType::TaggedSymbol
          )
        INDIVIDUAL_DELETED =
          T.let(
            :"individual.deleted",
            FinchAPI::IndividualEvent::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[FinchAPI::IndividualEvent::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
