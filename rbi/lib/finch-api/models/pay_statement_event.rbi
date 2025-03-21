# typed: strong

module FinchAPI
  module Models
    class PayStatementEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(FinchAPI::Models::PayStatementEvent::Data)) }
      def data
      end

      sig do
        params(_: T.any(FinchAPI::Models::PayStatementEvent::Data, FinchAPI::Util::AnyHash))
          .returns(T.any(FinchAPI::Models::PayStatementEvent::Data, FinchAPI::Util::AnyHash))
      end
      def data=(_)
      end

      sig { returns(T.nilable(FinchAPI::Models::PayStatementEvent::EventType::TaggedSymbol)) }
      def event_type
      end

      sig do
        params(_: FinchAPI::Models::PayStatementEvent::EventType::OrSymbol)
          .returns(FinchAPI::Models::PayStatementEvent::EventType::OrSymbol)
      end
      def event_type=(_)
      end

      sig do
        params(
          data: T.any(FinchAPI::Models::PayStatementEvent::Data, FinchAPI::Util::AnyHash),
          event_type: FinchAPI::Models::PayStatementEvent::EventType::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil)
      end

      sig do
        override
          .returns(
            {
              data: FinchAPI::Models::PayStatementEvent::Data,
              event_type: FinchAPI::Models::PayStatementEvent::EventType::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      class Data < FinchAPI::BaseModel
        # The ID of the individual associated with the pay statement.
        sig { returns(T.nilable(String)) }
        def individual_id
        end

        sig { params(_: String).returns(String) }
        def individual_id=(_)
        end

        # The ID of the payment associated with the pay statement.
        sig { returns(T.nilable(String)) }
        def payment_id
        end

        sig { params(_: String).returns(String) }
        def payment_id=(_)
        end

        sig { params(individual_id: String, payment_id: String).returns(T.attached_class) }
        def self.new(individual_id: nil, payment_id: nil)
        end

        sig { override.returns({individual_id: String, payment_id: String}) }
        def to_hash
        end
      end

      module EventType
        extend FinchAPI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::PayStatementEvent::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::PayStatementEvent::EventType::TaggedSymbol) }

        PAY_STATEMENT_CREATED =
          T.let(:"pay_statement.created", FinchAPI::Models::PayStatementEvent::EventType::TaggedSymbol)
        PAY_STATEMENT_UPDATED =
          T.let(:"pay_statement.updated", FinchAPI::Models::PayStatementEvent::EventType::TaggedSymbol)
        PAY_STATEMENT_DELETED =
          T.let(:"pay_statement.deleted", FinchAPI::Models::PayStatementEvent::EventType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[FinchAPI::Models::PayStatementEvent::EventType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
