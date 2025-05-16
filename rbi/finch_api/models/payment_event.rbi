# typed: strong

module FinchAPI
  module Models
    class PaymentEvent < FinchAPI::Models::BaseWebhookEvent
      OrHash =
        T.type_alias do
          T.any(FinchAPI::PaymentEvent, FinchAPI::Internal::AnyHash)
        end

      sig { returns(T.nilable(FinchAPI::PaymentEvent::Data)) }
      attr_reader :data

      sig { params(data: FinchAPI::PaymentEvent::Data::OrHash).void }
      attr_writer :data

      sig do
        returns(T.nilable(FinchAPI::PaymentEvent::EventType::TaggedSymbol))
      end
      attr_reader :event_type

      sig do
        params(event_type: FinchAPI::PaymentEvent::EventType::OrSymbol).void
      end
      attr_writer :event_type

      sig do
        params(
          data: FinchAPI::PaymentEvent::Data::OrHash,
          event_type: FinchAPI::PaymentEvent::EventType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil)
      end

      sig do
        override.returns(
          {
            data: FinchAPI::PaymentEvent::Data,
            event_type: FinchAPI::PaymentEvent::EventType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(FinchAPI::PaymentEvent::Data, FinchAPI::Internal::AnyHash)
          end

        # The date of the payment.
        sig { returns(String) }
        attr_accessor :pay_date

        # The ID of the payment.
        sig { returns(String) }
        attr_accessor :payment_id

        sig do
          params(pay_date: String, payment_id: String).returns(T.attached_class)
        end
        def self.new(
          # The date of the payment.
          pay_date:,
          # The ID of the payment.
          payment_id:
        )
        end

        sig { override.returns({ pay_date: String, payment_id: String }) }
        def to_hash
        end
      end

      module EventType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, FinchAPI::PaymentEvent::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_CREATED =
          T.let(
            :"payment.created",
            FinchAPI::PaymentEvent::EventType::TaggedSymbol
          )
        PAYMENT_UPDATED =
          T.let(
            :"payment.updated",
            FinchAPI::PaymentEvent::EventType::TaggedSymbol
          )
        PAYMENT_DELETED =
          T.let(
            :"payment.deleted",
            FinchAPI::PaymentEvent::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[FinchAPI::PaymentEvent::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
