# typed: strong

module FinchAPI
  module Internal
    class ResponsesPage
      Elem = type_member

      include FinchAPI::Internal::Type::BasePage

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :responses

      sig { returns(String) }
      def inspect
      end
    end
  end
end
