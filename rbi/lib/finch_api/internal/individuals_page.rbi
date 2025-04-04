# typed: strong

module FinchAPI
  module Internal
    class IndividualsPage
      include FinchAPI::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :individuals

      sig { returns(FinchAPI::Models::Paging) }
      attr_accessor :paging

      sig { returns(String) }
      def inspect
      end
    end
  end
end
