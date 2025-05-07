# typed: strong

module FinchAPI
  module Models
    module ConnectionStatusType
      extend FinchAPI::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, FinchAPI::ConnectionStatusType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING = T.let(:pending, FinchAPI::ConnectionStatusType::TaggedSymbol)
      PROCESSING =
        T.let(:processing, FinchAPI::ConnectionStatusType::TaggedSymbol)
      CONNECTED =
        T.let(:connected, FinchAPI::ConnectionStatusType::TaggedSymbol)
      ERROR_NO_ACCOUNT_SETUP =
        T.let(
          :error_no_account_setup,
          FinchAPI::ConnectionStatusType::TaggedSymbol
        )
      ERROR_PERMISSIONS =
        T.let(:error_permissions, FinchAPI::ConnectionStatusType::TaggedSymbol)
      REAUTH = T.let(:reauth, FinchAPI::ConnectionStatusType::TaggedSymbol)

      sig do
        override.returns(T::Array[FinchAPI::ConnectionStatusType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
