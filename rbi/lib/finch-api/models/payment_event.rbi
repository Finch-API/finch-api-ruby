# typed: strong

module FinchAPI
  module Models
    class PaymentEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(FinchAPI::Models::PaymentEvent::Data)) }
      attr_reader :data

      sig { params(data: T.any(FinchAPI::Models::PaymentEvent::Data, FinchAPI::Util::AnyHash)).void }
      attr_writer :data

      sig { returns(T.nilable(FinchAPI::Models::PaymentEvent::EventType::TaggedSymbol)) }
      attr_reader :event_type

      sig { params(event_type: FinchAPI::Models::PaymentEvent::EventType::OrSymbol).void }
      attr_writer :event_type

      sig do
        params(
          data: T.any(FinchAPI::Models::PaymentEvent::Data, FinchAPI::Util::AnyHash),
          event_type: FinchAPI::Models::PaymentEvent::EventType::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil)
      end

      sig do
        override
          .returns(
            {
              data: FinchAPI::Models::PaymentEvent::Data,
              event_type: FinchAPI::Models::PaymentEvent::EventType::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      class Data < FinchAPI::BaseModel
        # The date of the payment.
        sig { returns(String) }
        attr_accessor :pay_date

        # The ID of the payment.
        sig { returns(String) }
        attr_accessor :payment_id

        sig { params(pay_date: String, payment_id: String).returns(T.attached_class) }
        def self.new(pay_date:, payment_id:)
        end

        sig { override.returns({pay_date: String, payment_id: String}) }
        def to_hash
        end
      end

      module EventType
        extend FinchAPI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::PaymentEvent::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::PaymentEvent::EventType::TaggedSymbol) }

        PAYMENT_CREATED = T.let(:"payment.created", FinchAPI::Models::PaymentEvent::EventType::TaggedSymbol)
        PAYMENT_UPDATED = T.let(:"payment.updated", FinchAPI::Models::PaymentEvent::EventType::TaggedSymbol)
        PAYMENT_DELETED = T.let(:"payment.deleted", FinchAPI::Models::PaymentEvent::EventType::TaggedSymbol)

        sig { override.returns(T::Array[FinchAPI::Models::PaymentEvent::EventType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
