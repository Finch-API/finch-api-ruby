# typed: strong

module FinchAPI
  module Models
    class DirectoryEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(FinchAPI::Models::DirectoryEvent::Data)) }
      attr_reader :data

      sig { params(data: T.any(FinchAPI::Models::DirectoryEvent::Data, FinchAPI::Internal::AnyHash)).void }
      attr_writer :data

      sig { returns(T.nilable(FinchAPI::Models::DirectoryEvent::EventType::TaggedSymbol)) }
      attr_reader :event_type

      sig { params(event_type: FinchAPI::Models::DirectoryEvent::EventType::OrSymbol).void }
      attr_writer :event_type

      sig do
        params(
          data: T.any(FinchAPI::Models::DirectoryEvent::Data, FinchAPI::Internal::AnyHash),
          event_type: FinchAPI::Models::DirectoryEvent::EventType::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil); end

      sig do
        override
          .returns(
            {
              data: FinchAPI::Models::DirectoryEvent::Data,
              event_type: FinchAPI::Models::DirectoryEvent::EventType::TaggedSymbol
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
        def self.new(
          # The ID of the individual related to the event.
          individual_id: nil
        ); end
        sig { override.returns({individual_id: String}) }
        def to_hash; end
      end

      module EventType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::DirectoryEvent::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DIRECTORY_CREATED =
          T.let(:"directory.created", FinchAPI::Models::DirectoryEvent::EventType::TaggedSymbol)
        DIRECTORY_UPDATED =
          T.let(:"directory.updated", FinchAPI::Models::DirectoryEvent::EventType::TaggedSymbol)
        DIRECTORY_DELETED =
          T.let(:"directory.deleted", FinchAPI::Models::DirectoryEvent::EventType::TaggedSymbol)

        sig { override.returns(T::Array[FinchAPI::Models::DirectoryEvent::EventType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
