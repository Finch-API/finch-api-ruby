# typed: strong

module FinchAPI
  module Models
    module ConnectionStatusType
      extend FinchAPI::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::ConnectionStatusType) }
      OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::ConnectionStatusType::TaggedSymbol) }

      PENDING = T.let(:pending, FinchAPI::Models::ConnectionStatusType::TaggedSymbol)
      PROCESSING = T.let(:processing, FinchAPI::Models::ConnectionStatusType::TaggedSymbol)
      CONNECTED = T.let(:connected, FinchAPI::Models::ConnectionStatusType::TaggedSymbol)
      ERROR_NO_ACCOUNT_SETUP =
        T.let(:error_no_account_setup, FinchAPI::Models::ConnectionStatusType::TaggedSymbol)
      ERROR_PERMISSIONS = T.let(:error_permissions, FinchAPI::Models::ConnectionStatusType::TaggedSymbol)
      REAUTH = T.let(:reauth, FinchAPI::Models::ConnectionStatusType::TaggedSymbol)

      class << self
        sig { override.returns(T::Array[FinchAPI::Models::ConnectionStatusType::TaggedSymbol]) }
        def values
        end
      end
    end
  end
end
