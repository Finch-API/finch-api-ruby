# typed: strong

module FinchAPI
  module Internal
    class Page
      Elem = type_member

      include FinchAPI::Internal::Type::BasePage

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      sig { returns(FinchAPI::Models::Paging) }
      attr_accessor :paging

      sig { returns(String) }
      def inspect
      end
    end
  end
end
