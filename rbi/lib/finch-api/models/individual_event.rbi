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

      sig { params(data: FinchAPI::Models::IndividualEvent::Data, event_type: Symbol).returns(T.attached_class) }
      def self.new(data: nil, event_type: nil)
      end

      sig { override.returns({data: FinchAPI::Models::IndividualEvent::Data, event_type: Symbol}) }
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

      class EventType < FinchAPI::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        INDIVIDUAL_CREATED = :"individual.created"
        INDIVIDUAL_UPDATED = :"individual.updated"
        INDIVIDUAL_DELETED = :"individual.deleted"
      end
    end
  end
end
