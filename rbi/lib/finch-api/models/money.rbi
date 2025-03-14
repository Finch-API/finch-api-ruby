# typed: strong

module FinchAPI
  module Models
    class Money < FinchAPI::BaseModel
      # Amount for money object (in cents)
      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_)
      end

      sig { returns(T.nilable(String)) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { params(amount: T.nilable(Integer), currency: String).returns(T.attached_class) }
      def self.new(amount: nil, currency: nil)
      end

      sig { override.returns({amount: T.nilable(Integer), currency: String}) }
      def to_hash
      end
    end
  end
end
