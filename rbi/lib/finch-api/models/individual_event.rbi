# typed: strong

module FinchAPI
  module Models
    class IndividualEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(FinchAPI::Models::IndividualEvent::Data)) }
      def data
      end

      sig do
        params(_: T.any(FinchAPI::Models::IndividualEvent::Data, FinchAPI::Util::AnyHash))
          .returns(T.any(FinchAPI::Models::IndividualEvent::Data, FinchAPI::Util::AnyHash))
      end
      def data=(_)
      end

      sig { returns(T.nilable(FinchAPI::Models::IndividualEvent::EventType::TaggedSymbol)) }
      def event_type
      end

      sig do
        params(_: FinchAPI::Models::IndividualEvent::EventType::OrSymbol)
          .returns(FinchAPI::Models::IndividualEvent::EventType::OrSymbol)
      end
      def event_type=(_)
      end

      sig do
        params(
          data: T.any(FinchAPI::Models::IndividualEvent::Data, FinchAPI::Util::AnyHash),
          event_type: FinchAPI::Models::IndividualEvent::EventType::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil)
      end

      sig do
        override
          .returns(
            {
              data: FinchAPI::Models::IndividualEvent::Data,
              event_type: FinchAPI::Models::IndividualEvent::EventType::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      class Data < FinchAPI::BaseModel
        # The ID of the individual related to the event.
        sig { returns(T.nilable(String)) }
        def individual_id
        end

        sig { params(_: String).returns(String) }
        def individual_id=(_)
        end

        sig { params(individual_id: String).returns(T.attached_class) }
        def self.new(individual_id: nil)
        end

        sig { override.returns({individual_id: String}) }
        def to_hash
        end
      end

      module EventType
        extend FinchAPI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::IndividualEvent::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::IndividualEvent::EventType::TaggedSymbol) }

        INDIVIDUAL_CREATED =
          T.let(:"individual.created", FinchAPI::Models::IndividualEvent::EventType::TaggedSymbol)
        INDIVIDUAL_UPDATED =
          T.let(:"individual.updated", FinchAPI::Models::IndividualEvent::EventType::TaggedSymbol)
        INDIVIDUAL_DELETED =
          T.let(:"individual.deleted", FinchAPI::Models::IndividualEvent::EventType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[FinchAPI::Models::IndividualEvent::EventType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
