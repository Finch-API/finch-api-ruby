# typed: strong

module FinchAPI
  module Models
    class CompanyEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def data
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def data=(_)
      end

      sig { returns(T.nilable(FinchAPI::Models::CompanyEvent::EventType::TaggedSymbol)) }
      def event_type
      end

      sig do
        params(_: FinchAPI::Models::CompanyEvent::EventType::TaggedSymbol)
          .returns(FinchAPI::Models::CompanyEvent::EventType::TaggedSymbol)
      end
      def event_type=(_)
      end

      sig do
        params(
          data: T.nilable(T::Hash[Symbol, T.anything]),
          event_type: FinchAPI::Models::CompanyEvent::EventType::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil)
      end

      sig do
        override
          .returns(
            {
              data: T.nilable(T::Hash[Symbol, T.anything]),
              event_type: FinchAPI::Models::CompanyEvent::EventType::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      module EventType
        extend FinchAPI::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::CompanyEvent::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::CompanyEvent::EventType::TaggedSymbol) }

        COMPANY_UPDATED = T.let(:"company.updated", FinchAPI::Models::CompanyEvent::EventType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[FinchAPI::Models::CompanyEvent::EventType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
