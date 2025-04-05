# typed: strong

module FinchAPI
  module Models
    class IndividualEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(FinchAPI::Models::IndividualEvent::Data)) }
      attr_reader :data

      sig { params(data: T.any(FinchAPI::Models::IndividualEvent::Data, FinchAPI::Internal::AnyHash)).void }
      attr_writer :data

      sig { returns(T.nilable(FinchAPI::Models::IndividualEvent::EventType::TaggedSymbol)) }
      attr_reader :event_type

      sig { params(event_type: FinchAPI::Models::IndividualEvent::EventType::OrSymbol).void }
      attr_writer :event_type

      sig do
        params(
          data: T.any(FinchAPI::Models::IndividualEvent::Data, FinchAPI::Internal::AnyHash),
          event_type: FinchAPI::Models::IndividualEvent::EventType::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil); end

      sig do
        override
          .returns(
            {
              data: FinchAPI::Models::IndividualEvent::Data,
              event_type: FinchAPI::Models::IndividualEvent::EventType::TaggedSymbol
            }
          )
      end
      def to_hash; end

      class Data < FinchAPI::Internal::Type::BaseModel
        # The ID of the individual related to the event.
        sig { returns(T.nilable(String)) }
        attr_reader :individual_id

        sig { params(individual_id: String).void }
        attr_writer :individual_id

        sig { params(individual_id: String).returns(T.attached_class) }
        def self.new(individual_id: nil); end

        sig { override.returns({individual_id: String}) }
        def to_hash; end
      end

      module EventType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::IndividualEvent::EventType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, FinchAPI::Models::IndividualEvent::EventType::TaggedSymbol) }

        INDIVIDUAL_CREATED =
          T.let(:"individual.created", FinchAPI::Models::IndividualEvent::EventType::TaggedSymbol)
        INDIVIDUAL_UPDATED =
          T.let(:"individual.updated", FinchAPI::Models::IndividualEvent::EventType::TaggedSymbol)
        INDIVIDUAL_DELETED =
          T.let(:"individual.deleted", FinchAPI::Models::IndividualEvent::EventType::TaggedSymbol)

        sig { override.returns(T::Array[FinchAPI::Models::IndividualEvent::EventType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
