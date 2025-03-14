# typed: strong

module FinchAPI
  module Models
    class Paging < FinchAPI::BaseModel
      # The total number of elements for the entire query (not just the given page)
      sig { returns(T.nilable(Integer)) }
      def count
      end

      sig { params(_: Integer).returns(Integer) }
      def count=(_)
      end

      # The current start index of the returned list of elements
      sig { returns(T.nilable(Integer)) }
      def offset
      end

      sig { params(_: Integer).returns(Integer) }
      def offset=(_)
      end

      sig { params(count: Integer, offset: Integer).returns(T.attached_class) }
      def self.new(count: nil, offset: nil)
      end

      sig { override.returns({count: Integer, offset: Integer}) }
      def to_hash
      end
    end
  end
end
