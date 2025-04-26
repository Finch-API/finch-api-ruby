# typed: strong

module FinchAPI
  module Models
    class CompanyEvent < FinchAPI::Models::BaseWebhookEvent
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

      sig { returns(T.nilable(FinchAPI::Models::CompanyEvent::EventType::TaggedSymbol)) }
      attr_reader :event_type

      sig { params(event_type: FinchAPI::Models::CompanyEvent::EventType::OrSymbol).void }
      attr_writer :event_type

      sig do
        params(
          data: T.nilable(T::Hash[Symbol, T.anything]),
          event_type: FinchAPI::Models::CompanyEvent::EventType::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil); end

      sig do
        override
          .returns(
            {
              data: T.nilable(T::Hash[Symbol, T.anything]),
              event_type: FinchAPI::Models::CompanyEvent::EventType::TaggedSymbol
            }
          )
      end
      def to_hash; end

      module EventType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::CompanyEvent::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMPANY_UPDATED = T.let(:"company.updated", FinchAPI::Models::CompanyEvent::EventType::TaggedSymbol)

        sig { override.returns(T::Array[FinchAPI::Models::CompanyEvent::EventType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
