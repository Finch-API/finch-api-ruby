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

      sig { returns(T.nilable(Symbol)) }
      def event_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def event_type=(_)
      end

      sig { params(data: FinchAPI::Models::DirectoryEvent::Data, event_type: Symbol).returns(T.attached_class) }
      def self.new(data: nil, event_type: nil)
      end

      sig { override.returns({data: FinchAPI::Models::DirectoryEvent::Data, event_type: Symbol}) }
      def to_hash
      end

      class Data < FinchAPI::BaseModel
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

      class EventType < FinchAPI::Enum
        abstract!

        DIRECTORY_CREATED = :"directory.created"
        DIRECTORY_UPDATED = :"directory.updated"
        DIRECTORY_DELETED = :"directory.deleted"

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
