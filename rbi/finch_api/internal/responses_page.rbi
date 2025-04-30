# typed: strong

module FinchAPI
  module Internal
    class ResponsesPage
      include FinchAPI::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :responses

      # @api private
      sig { returns(String) }
      def inspect; end
    end
  end
end
