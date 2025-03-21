# typed: strong

module FinchAPI
  module Models
    class PaymentEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(FinchAPI::Models::PaymentEvent::Data)) }
      def data
      end

      sig do
        params(_: T.any(FinchAPI::Models::PaymentEvent::Data, FinchAPI::Util::AnyHash))
          .returns(T.any(FinchAPI::Models::PaymentEvent::Data, FinchAPI::Util::AnyHash))
      end
      def data=(_)
      end

      sig { returns(T.nilable(FinchAPI::Models::PaymentEvent::EventType::TaggedSymbol)) }
      def event_type
      end

      sig do
        params(_: FinchAPI::Models::PaymentEvent::EventType::TaggedSymbol)
          .returns(FinchAPI::Models::PaymentEvent::EventType::TaggedSymbol)
      end
      def event_type=(_)
      end

      sig do
        params(
          data: T.any(FinchAPI::Models::PaymentEvent::Data, FinchAPI::Util::AnyHash),
          event_type: FinchAPI::Models::PaymentEvent::EventType::TaggedSymbol
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
        def pay_date
        end

        sig { params(_: String).returns(String) }
        def pay_date=(_)
        end

        # The ID of the payment.
        sig { returns(String) }
        def payment_id
        end

        sig { params(_: String).returns(String) }
        def payment_id=(_)
        end

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

        class << self
          sig { override.returns(T::Array[FinchAPI::Models::PaymentEvent::EventType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
