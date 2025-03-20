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
      sig { returns(T.nilable(FinchAPI::Models::OperationSupport::TaggedSymbol)) }
      def create
      end

      sig do
        params(_: FinchAPI::Models::OperationSupport::TaggedSymbol)
          .returns(FinchAPI::Models::OperationSupport::TaggedSymbol)
      end
      def create=(_)
      end

      # - `supported`: This operation is supported by both the provider and Finch
      #   - `not_supported_by_finch`: This operation is not supported by Finch but
      #     supported by the provider
      #   - `not_supported_by_provider`: This operation is not supported by the provider,
      #     so Finch cannot support
      #   - `client_access_only`: This behavior is supported by the provider, but only
      #     available to the client and not to Finch
      sig { returns(T.nilable(FinchAPI::Models::OperationSupport::TaggedSymbol)) }
      def delete
      end

      sig do
        params(_: FinchAPI::Models::OperationSupport::TaggedSymbol)
          .returns(FinchAPI::Models::OperationSupport::TaggedSymbol)
      end
      def delete=(_)
      end

      # - `supported`: This operation is supported by both the provider and Finch
      #   - `not_supported_by_finch`: This operation is not supported by Finch but
      #     supported by the provider
      #   - `not_supported_by_provider`: This operation is not supported by the provider,
      #     so Finch cannot support
      #   - `client_access_only`: This behavior is supported by the provider, but only
      #     available to the client and not to Finch
      sig { returns(T.nilable(FinchAPI::Models::OperationSupport::TaggedSymbol)) }
      def read
      end

      sig do
        params(_: FinchAPI::Models::OperationSupport::TaggedSymbol)
          .returns(FinchAPI::Models::OperationSupport::TaggedSymbol)
      end
      def read=(_)
      end

      # - `supported`: This operation is supported by both the provider and Finch
      #   - `not_supported_by_finch`: This operation is not supported by Finch but
      #     supported by the provider
      #   - `not_supported_by_provider`: This operation is not supported by the provider,
      #     so Finch cannot support
      #   - `client_access_only`: This behavior is supported by the provider, but only
      #     available to the client and not to Finch
      sig { returns(T.nilable(FinchAPI::Models::OperationSupport::TaggedSymbol)) }
      def update
      end

      sig do
        params(_: FinchAPI::Models::OperationSupport::TaggedSymbol)
          .returns(FinchAPI::Models::OperationSupport::TaggedSymbol)
      end
      def update=(_)
      end

      sig do
        params(
          create: FinchAPI::Models::OperationSupport::TaggedSymbol,
          delete: FinchAPI::Models::OperationSupport::TaggedSymbol,
          read: FinchAPI::Models::OperationSupport::TaggedSymbol,
          update: FinchAPI::Models::OperationSupport::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(create: nil, delete: nil, read: nil, update: nil)
      end

      sig do
        override
          .returns(
            {
              create: FinchAPI::Models::OperationSupport::TaggedSymbol,
              delete: FinchAPI::Models::OperationSupport::TaggedSymbol,
              read: FinchAPI::Models::OperationSupport::TaggedSymbol,
              update: FinchAPI::Models::OperationSupport::TaggedSymbol
            }
          )
      end
      def to_hash
      end
    end
  end
end
