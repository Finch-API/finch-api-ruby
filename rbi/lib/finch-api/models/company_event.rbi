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

      sig { returns(T.nilable(Symbol)) }
      def event_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def event_type=(_)
      end

      sig { params(data: T.nilable(T::Hash[Symbol, T.anything]), event_type: Symbol).void }
      def initialize(data: nil, event_type: nil)
      end

      sig { override.returns({data: T.nilable(T::Hash[Symbol, T.anything]), event_type: Symbol}) }
      def to_hash
      end

      class EventType < FinchAPI::Enum
        abstract!

        COMPANY_UPDATED = :"company.updated"

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
