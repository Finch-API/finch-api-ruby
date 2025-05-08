# typed: strong

module FinchAPI
  module Internal
    class Page
      include FinchAPI::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      sig { returns(FinchAPI::Paging) }
      attr_accessor :paging

      # @api private
      sig { returns(String) }
      def inspect
      end
    end
  end
end
