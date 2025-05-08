# typed: strong

module FinchAPI
  module Models
    class Money < FinchAPI::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

      # Amount for money object (in cents)
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount

      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      sig do
        params(amount: T.nilable(Integer), currency: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # Amount for money object (in cents)
        amount: nil,
        currency: nil
      )
      end

      sig { override.returns({ amount: T.nilable(Integer), currency: String }) }
      def to_hash
      end
    end
  end
end
