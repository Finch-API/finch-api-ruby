# typed: strong

module FinchAPI
  module Internal
    class SinglePage < ::Array
      Elem = type_member

      include FinchAPI::Internal::Type::BasePage

      sig { override.returns(T::Boolean) }
      def next_page?
      end

      sig { override.returns(T.self_type) }
      def next_page
      end

      sig { override.params(blk: T.proc.params(arg0: Elem).void).void }
      def auto_paging_each(&blk)
      end

      sig { returns(String) }
      def inspect
      end
    end
  end
end
