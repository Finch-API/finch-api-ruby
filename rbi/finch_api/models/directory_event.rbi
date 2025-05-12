# typed: strong

module FinchAPI
  module Models
    class DirectoryEvent < FinchAPI::Models::BaseWebhookEvent
      OrHash =
        T.type_alias do
          T.any(FinchAPI::DirectoryEvent, FinchAPI::Internal::AnyHash)
        end

      sig { returns(T.nilable(FinchAPI::DirectoryEvent::Data)) }
      attr_reader :data

      sig { params(data: FinchAPI::DirectoryEvent::Data::OrHash).void }
      attr_writer :data

      sig do
        returns(T.nilable(FinchAPI::DirectoryEvent::EventType::TaggedSymbol))
      end
      attr_reader :event_type

      sig do
        params(event_type: FinchAPI::DirectoryEvent::EventType::OrSymbol).void
      end
      attr_writer :event_type

      sig do
        params(
          data: FinchAPI::DirectoryEvent::Data::OrHash,
          event_type: FinchAPI::DirectoryEvent::EventType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil)
      end

      sig do
        override.returns(
          {
            data: FinchAPI::DirectoryEvent::Data,
            event_type: FinchAPI::DirectoryEvent::EventType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(FinchAPI::DirectoryEvent::Data, FinchAPI::Internal::AnyHash)
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
          T.type_alias { T.all(Symbol, FinchAPI::DirectoryEvent::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DIRECTORY_CREATED =
          T.let(
            :"directory.created",
            FinchAPI::DirectoryEvent::EventType::TaggedSymbol
          )
        DIRECTORY_UPDATED =
          T.let(
            :"directory.updated",
            FinchAPI::DirectoryEvent::EventType::TaggedSymbol
          )
        DIRECTORY_DELETED =
          T.let(
            :"directory.deleted",
            FinchAPI::DirectoryEvent::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[FinchAPI::DirectoryEvent::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
