# typed: strong

module FinchAPI
  module Models
    class OperationSupportMatrix < FinchAPI::BaseModel
      # - `supported`: This operation is supported by both the provider and Finch
      #   - `not_supported_by_finch`: This operation is not supported by Finch but
      #     supported by the provider
      #   - `not_supported_by_provider`: This operation is not supported by the provider,
      #     so Finch cannot support
      #   - `client_access_only`: This behavior is supported by the provider, but only
      #     available to the client and not to Finch
      sig { returns(T.nilable(Symbol)) }
      def create
      end

      sig { params(_: Symbol).returns(Symbol) }
      def create=(_)
      end

      # - `supported`: This operation is supported by both the provider and Finch
      #   - `not_supported_by_finch`: This operation is not supported by Finch but
      #     supported by the provider
      #   - `not_supported_by_provider`: This operation is not supported by the provider,
      #     so Finch cannot support
      #   - `client_access_only`: This behavior is supported by the provider, but only
      #     available to the client and not to Finch
      sig { returns(T.nilable(Symbol)) }
      def delete
      end

      sig { params(_: Symbol).returns(Symbol) }
      def delete=(_)
      end

      # - `supported`: This operation is supported by both the provider and Finch
      #   - `not_supported_by_finch`: This operation is not supported by Finch but
      #     supported by the provider
      #   - `not_supported_by_provider`: This operation is not supported by the provider,
      #     so Finch cannot support
      #   - `client_access_only`: This behavior is supported by the provider, but only
      #     available to the client and not to Finch
      sig { returns(T.nilable(Symbol)) }
      def read
      end

      sig { params(_: Symbol).returns(Symbol) }
      def read=(_)
      end

      # - `supported`: This operation is supported by both the provider and Finch
      #   - `not_supported_by_finch`: This operation is not supported by Finch but
      #     supported by the provider
      #   - `not_supported_by_provider`: This operation is not supported by the provider,
      #     so Finch cannot support
      #   - `client_access_only`: This behavior is supported by the provider, but only
      #     available to the client and not to Finch
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
