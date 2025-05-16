# typed: strong

module FinchAPI
  module Models
    class OperationSupportMatrix < FinchAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(FinchAPI::OperationSupportMatrix, FinchAPI::Internal::AnyHash)
        end

      # - `supported`: This operation is supported by both the provider and Finch
      # - `not_supported_by_finch`: This operation is not supported by Finch but
      #   supported by the provider
      # - `not_supported_by_provider`: This operation is not supported by the provider,
      #   so Finch cannot support
      # - `client_access_only`: This behavior is supported by the provider, but only
      #   available to the client and not to Finch
      sig { returns(T.nilable(FinchAPI::OperationSupport::TaggedSymbol)) }
      attr_reader :create

      sig { params(create: FinchAPI::OperationSupport::OrSymbol).void }
      attr_writer :create

      # - `supported`: This operation is supported by both the provider and Finch
      # - `not_supported_by_finch`: This operation is not supported by Finch but
      #   supported by the provider
      # - `not_supported_by_provider`: This operation is not supported by the provider,
      #   so Finch cannot support
      # - `client_access_only`: This behavior is supported by the provider, but only
      #   available to the client and not to Finch
      sig { returns(T.nilable(FinchAPI::OperationSupport::TaggedSymbol)) }
      attr_reader :delete

      sig { params(delete: FinchAPI::OperationSupport::OrSymbol).void }
      attr_writer :delete

      # - `supported`: This operation is supported by both the provider and Finch
      # - `not_supported_by_finch`: This operation is not supported by Finch but
      #   supported by the provider
      # - `not_supported_by_provider`: This operation is not supported by the provider,
      #   so Finch cannot support
      # - `client_access_only`: This behavior is supported by the provider, but only
      #   available to the client and not to Finch
      sig { returns(T.nilable(FinchAPI::OperationSupport::TaggedSymbol)) }
      attr_reader :read

      sig { params(read: FinchAPI::OperationSupport::OrSymbol).void }
      attr_writer :read

      # - `supported`: This operation is supported by both the provider and Finch
      # - `not_supported_by_finch`: This operation is not supported by Finch but
      #   supported by the provider
      # - `not_supported_by_provider`: This operation is not supported by the provider,
      #   so Finch cannot support
      # - `client_access_only`: This behavior is supported by the provider, but only
      #   available to the client and not to Finch
      sig { returns(T.nilable(FinchAPI::OperationSupport::TaggedSymbol)) }
      attr_reader :update

      sig { params(update: FinchAPI::OperationSupport::OrSymbol).void }
      attr_writer :update

      sig do
        params(
          create: FinchAPI::OperationSupport::OrSymbol,
          delete: FinchAPI::OperationSupport::OrSymbol,
          read: FinchAPI::OperationSupport::OrSymbol,
          update: FinchAPI::OperationSupport::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # - `supported`: This operation is supported by both the provider and Finch
        # - `not_supported_by_finch`: This operation is not supported by Finch but
        #   supported by the provider
        # - `not_supported_by_provider`: This operation is not supported by the provider,
        #   so Finch cannot support
        # - `client_access_only`: This behavior is supported by the provider, but only
        #   available to the client and not to Finch
        create: nil,
        # - `supported`: This operation is supported by both the provider and Finch
        # - `not_supported_by_finch`: This operation is not supported by Finch but
        #   supported by the provider
        # - `not_supported_by_provider`: This operation is not supported by the provider,
        #   so Finch cannot support
        # - `client_access_only`: This behavior is supported by the provider, but only
        #   available to the client and not to Finch
        delete: nil,
        # - `supported`: This operation is supported by both the provider and Finch
        # - `not_supported_by_finch`: This operation is not supported by Finch but
        #   supported by the provider
        # - `not_supported_by_provider`: This operation is not supported by the provider,
        #   so Finch cannot support
        # - `client_access_only`: This behavior is supported by the provider, but only
        #   available to the client and not to Finch
        read: nil,
        # - `supported`: This operation is supported by both the provider and Finch
        # - `not_supported_by_finch`: This operation is not supported by Finch but
        #   supported by the provider
        # - `not_supported_by_provider`: This operation is not supported by the provider,
        #   so Finch cannot support
        # - `client_access_only`: This behavior is supported by the provider, but only
        #   available to the client and not to Finch
        update: nil
      )
      end

      sig do
        override.returns(
          {
            create: FinchAPI::OperationSupport::TaggedSymbol,
            delete: FinchAPI::OperationSupport::TaggedSymbol,
            read: FinchAPI::OperationSupport::TaggedSymbol,
            update: FinchAPI::OperationSupport::TaggedSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
