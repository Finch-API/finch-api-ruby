# typed: strong

module FinchAPI
  module Models
    class DirectoryEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(FinchAPI::Models::DirectoryEvent::Data)) }
      def data
      end

      sig { params(_: FinchAPI::Models::DirectoryEvent::Data).returns(FinchAPI::Models::DirectoryEvent::Data) }
      def data=(_)
      end

      sig { returns(T.nilable(FinchAPI::Models::DirectoryEvent::EventType::TaggedSymbol)) }
      def event_type
      end

      sig do
        params(_: FinchAPI::Models::DirectoryEvent::EventType::TaggedSymbol)
          .returns(FinchAPI::Models::DirectoryEvent::EventType::TaggedSymbol)
      end
      def event_type=(_)
      end

      sig do
        params(
          data: FinchAPI::Models::DirectoryEvent::Data,
          event_type: FinchAPI::Models::DirectoryEvent::EventType::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil)
      end

      sig do
        override
          .returns(
            {
              data: FinchAPI::Models::DirectoryEvent::Data,
              event_type: FinchAPI::Models::DirectoryEvent::EventType::TaggedSymbol
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

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::DirectoryEvent::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::DirectoryEvent::EventType::TaggedSymbol) }

        DIRECTORY_CREATED =
          T.let(:"directory.created", FinchAPI::Models::DirectoryEvent::EventType::TaggedSymbol)
        DIRECTORY_UPDATED =
          T.let(:"directory.updated", FinchAPI::Models::DirectoryEvent::EventType::TaggedSymbol)
        DIRECTORY_DELETED =
          T.let(:"directory.deleted", FinchAPI::Models::DirectoryEvent::EventType::TaggedSymbol)
      end
    end
  end
end
