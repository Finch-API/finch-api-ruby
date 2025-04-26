# typed: strong

module FinchAPI
  module Models
    module ConnectionStatusType
      extend FinchAPI::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::ConnectionStatusType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING = T.let(:pending, FinchAPI::Models::ConnectionStatusType::TaggedSymbol)
      PROCESSING = T.let(:processing, FinchAPI::Models::ConnectionStatusType::TaggedSymbol)
      CONNECTED = T.let(:connected, FinchAPI::Models::ConnectionStatusType::TaggedSymbol)
      ERROR_NO_ACCOUNT_SETUP =
        T.let(:error_no_account_setup, FinchAPI::Models::ConnectionStatusType::TaggedSymbol)
      ERROR_PERMISSIONS = T.let(:error_permissions, FinchAPI::Models::ConnectionStatusType::TaggedSymbol)
      REAUTH = T.let(:reauth, FinchAPI::Models::ConnectionStatusType::TaggedSymbol)

      sig { override.returns(T::Array[FinchAPI::Models::ConnectionStatusType::TaggedSymbol]) }
      def self.values; end
    end
  end
end
