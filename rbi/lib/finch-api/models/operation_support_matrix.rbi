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
      attr_reader :create

      sig { params(create: FinchAPI::Models::OperationSupport::OrSymbol).void }
      attr_writer :create

      # - `supported`: This operation is supported by both the provider and Finch
      #   - `not_supported_by_finch`: This operation is not supported by Finch but
      #     supported by the provider
      #   - `not_supported_by_provider`: This operation is not supported by the provider,
      #     so Finch cannot support
      #   - `client_access_only`: This behavior is supported by the provider, but only
      #     available to the client and not to Finch
      sig { returns(T.nilable(FinchAPI::Models::OperationSupport::TaggedSymbol)) }
      attr_reader :delete

      sig { params(delete: FinchAPI::Models::OperationSupport::OrSymbol).void }
      attr_writer :delete

      # - `supported`: This operation is supported by both the provider and Finch
      #   - `not_supported_by_finch`: This operation is not supported by Finch but
      #     supported by the provider
      #   - `not_supported_by_provider`: This operation is not supported by the provider,
      #     so Finch cannot support
      #   - `client_access_only`: This behavior is supported by the provider, but only
      #     available to the client and not to Finch
      sig { returns(T.nilable(FinchAPI::Models::OperationSupport::TaggedSymbol)) }
      attr_reader :read

      sig { params(read: FinchAPI::Models::OperationSupport::OrSymbol).void }
      attr_writer :read

      # - `supported`: This operation is supported by both the provider and Finch
      #   - `not_supported_by_finch`: This operation is not supported by Finch but
      #     supported by the provider
      #   - `not_supported_by_provider`: This operation is not supported by the provider,
      #     so Finch cannot support
      #   - `client_access_only`: This behavior is supported by the provider, but only
      #     available to the client and not to Finch
      sig { returns(T.nilable(FinchAPI::Models::OperationSupport::TaggedSymbol)) }
      attr_reader :update

      sig { params(update: FinchAPI::Models::OperationSupport::OrSymbol).void }
      attr_writer :update

      sig do
        params(
          create: FinchAPI::Models::OperationSupport::OrSymbol,
          delete: FinchAPI::Models::OperationSupport::OrSymbol,
          read: FinchAPI::Models::OperationSupport::OrSymbol,
          update: FinchAPI::Models::OperationSupport::OrSymbol
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
