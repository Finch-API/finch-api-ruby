# typed: strong

module FinchAPI
  module Models
    class PaymentEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(FinchAPI::Models::PaymentEvent::Data)) }
      def data
      end

      sig { params(_: FinchAPI::Models::PaymentEvent::Data).returns(FinchAPI::Models::PaymentEvent::Data) }
      def data=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def event_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def event_type=(_)
      end

      sig { params(data: FinchAPI::Models::PaymentEvent::Data, event_type: Symbol).void }
      def initialize(data: nil, event_type: nil)
      end

      sig { override.returns({data: FinchAPI::Models::PaymentEvent::Data, event_type: Symbol}) }
      def to_hash
      end

      class Data < FinchAPI::BaseModel
        sig { returns(String) }
        def pay_date
        end

        sig { params(_: String).returns(String) }
        def pay_date=(_)
        end

        sig { returns(String) }
        def payment_id
        end

        sig { params(_: String).returns(String) }
        def payment_id=(_)
        end

        sig { params(pay_date: String, payment_id: String).void }
        def initialize(pay_date:, payment_id:)
        end

        sig { override.returns({pay_date: String, payment_id: String}) }
        def to_hash
        end
      end

      class EventType < FinchAPI::Enum
        abstract!

        PAYMENT_CREATED = :"payment.created"
        PAYMENT_UPDATED = :"payment.updated"
        PAYMENT_DELETED = :"payment.deleted"

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
