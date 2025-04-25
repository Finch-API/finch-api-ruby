# typed: strong

module FinchAPI
  module Models
    # - `supported`: This operation is supported by both the provider and Finch
    # - `not_supported_by_finch`: This operation is not supported by Finch but
    #   supported by the provider
    # - `not_supported_by_provider`: This operation is not supported by the provider,
    #   so Finch cannot support
    # - `client_access_only`: This behavior is supported by the provider, but only
    #   available to the client and not to Finch
    module OperationSupport
      extend FinchAPI::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::OperationSupport) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SUPPORTED = T.let(:supported, FinchAPI::Models::OperationSupport::TaggedSymbol)
      NOT_SUPPORTED_BY_FINCH = T.let(:not_supported_by_finch, FinchAPI::Models::OperationSupport::TaggedSymbol)
      NOT_SUPPORTED_BY_PROVIDER =
        T.let(:not_supported_by_provider, FinchAPI::Models::OperationSupport::TaggedSymbol)
      CLIENT_ACCESS_ONLY = T.let(:client_access_only, FinchAPI::Models::OperationSupport::TaggedSymbol)

      sig { override.returns(T::Array[FinchAPI::Models::OperationSupport::TaggedSymbol]) }
      def self.values; end
    end
  end
end
