# typed: strong

module FinchAPI
  module Models
    class PayStatementEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(FinchAPI::Models::PayStatementEvent::Data)) }
      def data
      end

      sig { params(_: FinchAPI::Models::PayStatementEvent::Data).returns(FinchAPI::Models::PayStatementEvent::Data) }
      def data=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def event_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def event_type=(_)
      end

      sig { params(data: FinchAPI::Models::PayStatementEvent::Data, event_type: Symbol).void }
      def initialize(data: nil, event_type: nil)
      end

      sig { override.returns({data: FinchAPI::Models::PayStatementEvent::Data, event_type: Symbol}) }
      def to_hash
      end

      class Data < FinchAPI::BaseModel
        sig { returns(T.nilable(String)) }
        def individual_id
        end

        sig { params(_: String).returns(String) }
        def individual_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def payment_id
        end

        sig { params(_: String).returns(String) }
        def payment_id=(_)
        end

        sig { params(individual_id: String, payment_id: String).void }
        def initialize(individual_id: nil, payment_id: nil)
        end

        sig { override.returns({individual_id: String, payment_id: String}) }
        def to_hash
        end
      end

      class EventType < FinchAPI::Enum
        abstract!

        PAY_STATEMENT_CREATED = :"pay_statement.created"
        PAY_STATEMENT_UPDATED = :"pay_statement.updated"
        PAY_STATEMENT_DELETED = :"pay_statement.deleted"

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
