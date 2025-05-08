# typed: strong

module FinchAPI
  module Models
    class PayStatementEvent < FinchAPI::Models::BaseWebhookEvent
      OrHash = T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

      sig { returns(T.nilable(FinchAPI::PayStatementEvent::Data)) }
      attr_reader :data

      sig { params(data: FinchAPI::PayStatementEvent::Data::OrHash).void }
      attr_writer :data

      sig do
        returns(T.nilable(FinchAPI::PayStatementEvent::EventType::TaggedSymbol))
      end
      attr_reader :event_type

      sig do
        params(
          event_type: FinchAPI::PayStatementEvent::EventType::OrSymbol
        ).void
      end
      attr_writer :event_type

      sig do
        params(
          data: FinchAPI::PayStatementEvent::Data::OrHash,
          event_type: FinchAPI::PayStatementEvent::EventType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil)
      end

      sig do
        override.returns(
          {
            data: FinchAPI::PayStatementEvent::Data,
            event_type: FinchAPI::PayStatementEvent::EventType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

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

        sig do
          params(individual_id: String, payment_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID of the individual associated with the pay statement.
          individual_id: nil,
          # The ID of the payment associated with the pay statement.
          payment_id: nil
        )
        end

        sig { override.returns({ individual_id: String, payment_id: String }) }
        def to_hash
        end
      end

      module EventType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, FinchAPI::PayStatementEvent::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAY_STATEMENT_CREATED =
          T.let(
            :"pay_statement.created",
            FinchAPI::PayStatementEvent::EventType::TaggedSymbol
          )
        PAY_STATEMENT_UPDATED =
          T.let(
            :"pay_statement.updated",
            FinchAPI::PayStatementEvent::EventType::TaggedSymbol
          )
        PAY_STATEMENT_DELETED =
          T.let(
            :"pay_statement.deleted",
            FinchAPI::PayStatementEvent::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[FinchAPI::PayStatementEvent::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
