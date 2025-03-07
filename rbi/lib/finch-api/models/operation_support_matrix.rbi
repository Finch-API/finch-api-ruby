# typed: strong

module FinchAPI
  module Models
    class OperationSupportMatrix < FinchAPI::BaseModel
      sig { returns(T.nilable(Symbol)) }
      def create
      end

      sig { params(_: Symbol).returns(Symbol) }
      def create=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def delete
      end

      sig { params(_: Symbol).returns(Symbol) }
      def delete=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def read
      end

      sig { params(_: Symbol).returns(Symbol) }
      def read=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def update
      end

      sig { params(_: Symbol).returns(Symbol) }
      def update=(_)
      end

      sig { params(create: Symbol, delete: Symbol, read: Symbol, update: Symbol).returns(T.attached_class) }
      def self.new(create: nil, delete: nil, read: nil, update: nil)
      end

      sig { override.returns({create: Symbol, delete: Symbol, read: Symbol, update: Symbol}) }
      def to_hash
      end
    end
  end
end
