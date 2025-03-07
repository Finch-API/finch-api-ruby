# typed: strong

module FinchAPI
  module Models
    class IndividualEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(FinchAPI::Models::IndividualEvent::Data)) }
      def data
      end

      sig { params(_: FinchAPI::Models::IndividualEvent::Data).returns(FinchAPI::Models::IndividualEvent::Data) }
      def data=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def event_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def event_type=(_)
      end

      sig { params(data: FinchAPI::Models::IndividualEvent::Data, event_type: Symbol).void }
      def initialize(data: nil, event_type: nil)
      end

      sig { override.returns({data: FinchAPI::Models::IndividualEvent::Data, event_type: Symbol}) }
      def to_hash
      end

      class Data < FinchAPI::BaseModel
        sig { returns(T.nilable(String)) }
        def individual_id
        end

        sig { params(_: String).returns(String) }
        def individual_id=(_)
        end

        sig { params(individual_id: String).void }
        def initialize(individual_id: nil)
        end

        sig { override.returns({individual_id: String}) }
        def to_hash
        end
      end

      class EventType < FinchAPI::Enum
        abstract!

        INDIVIDUAL_CREATED = :"individual.created"
        INDIVIDUAL_UPDATED = :"individual.updated"
        INDIVIDUAL_DELETED = :"individual.deleted"

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
