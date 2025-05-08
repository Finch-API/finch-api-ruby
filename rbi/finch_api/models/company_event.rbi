# typed: strong

module FinchAPI
  module Models
    class CompanyEvent < FinchAPI::Models::BaseWebhookEvent
      OrHash = T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

      sig do
        returns(T.nilable(FinchAPI::CompanyEvent::EventType::TaggedSymbol))
      end
      attr_reader :event_type

      sig do
        params(event_type: FinchAPI::CompanyEvent::EventType::OrSymbol).void
      end
      attr_writer :event_type

      sig do
        params(
          data: T.nilable(T::Hash[Symbol, T.anything]),
          event_type: FinchAPI::CompanyEvent::EventType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(data: nil, event_type: nil)
      end

      sig do
        override.returns(
          {
            data: T.nilable(T::Hash[Symbol, T.anything]),
            event_type: FinchAPI::CompanyEvent::EventType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module EventType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, FinchAPI::CompanyEvent::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMPANY_UPDATED =
          T.let(
            :"company.updated",
            FinchAPI::CompanyEvent::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[FinchAPI::CompanyEvent::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
