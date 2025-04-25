# typed: strong

module FinchAPI
  module Models
    class PayStatementEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(FinchAPI::Models::PayStatementEvent::Data)) }
      attr_reader :data

      sig { params(data: T.any(FinchAPI::Models::PayStatementEvent::Data, FinchAPI::Internal::AnyHash)).void }
      attr_writer :data

      sig { returns(T.nilable(FinchAPI::Models::PayStatementEvent::EventType::TaggedSymbol)) }
      attr_reader :event_type

      sig { params(event_type: FinchAPI::Models::PayStatementEvent::EventType::OrSymbol).void }
      attr_writer :event_type

      sig do
        params(
          data: T.any(FinchAPI::Models::PayStatementEvent::Data, FinchAPI::Internal::AnyHash),
          event_type: FinchAPI::Models::PayStatementEvent::EventType::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil); end

      sig do
        override
          .returns(
            {
              data: FinchAPI::Models::PayStatementEvent::Data,
              event_type: FinchAPI::Models::PayStatementEvent::EventType::TaggedSymbol
            }
          )
      end
      def to_hash; end

      class Data < FinchAPI::Internal::Type::BaseModel
        # The ID of the individual associated with the pay statement.
        sig { returns(T.nilable(String)) }
        attr_reader :individual_id

        sig { params(individual_id: String).void }
        attr_writer :individual_id

        # The ID of the payment associated with the pay statement.
        sig { returns(T.nilable(String)) }
        attr_reader :payment_id

        sig { params(payment_id: String).void }
        attr_writer :payment_id

        sig { params(individual_id: String, payment_id: String).returns(T.attached_class) }
        def self.new(
          # The ID of the individual associated with the pay statement.
          individual_id: nil,
          # The ID of the payment associated with the pay statement.
          payment_id: nil
        ); end
        sig { override.returns({individual_id: String, payment_id: String}) }
        def to_hash; end
      end

      module EventType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::PayStatementEvent::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAY_STATEMENT_CREATED =
          T.let(:"pay_statement.created", FinchAPI::Models::PayStatementEvent::EventType::TaggedSymbol)
        PAY_STATEMENT_UPDATED =
          T.let(:"pay_statement.updated", FinchAPI::Models::PayStatementEvent::EventType::TaggedSymbol)
        PAY_STATEMENT_DELETED =
          T.let(:"pay_statement.deleted", FinchAPI::Models::PayStatementEvent::EventType::TaggedSymbol)

        sig { override.returns(T::Array[FinchAPI::Models::PayStatementEvent::EventType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
