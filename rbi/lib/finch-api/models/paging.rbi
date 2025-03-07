# typed: strong

module FinchAPI
  module Models
    class Paging < FinchAPI::BaseModel
      sig { returns(T.nilable(Integer)) }
      def count
      end

      sig { params(_: Integer).returns(Integer) }
      def count=(_)
      end

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
