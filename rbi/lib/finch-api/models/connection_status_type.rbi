# typed: strong

module FinchAPI
  module Models
    module ConnectionStatusType
      extend FinchAPI::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::ConnectionStatusType) }
      OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::ConnectionStatusType::TaggedSymbol) }

      PENDING = T.let(:pending, FinchAPI::Models::ConnectionStatusType::OrSymbol)
      PROCESSING = T.let(:processing, FinchAPI::Models::ConnectionStatusType::OrSymbol)
      CONNECTED = T.let(:connected, FinchAPI::Models::ConnectionStatusType::OrSymbol)
      ERROR_NO_ACCOUNT_SETUP = T.let(:error_no_account_setup, FinchAPI::Models::ConnectionStatusType::OrSymbol)
      ERROR_PERMISSIONS = T.let(:error_permissions, FinchAPI::Models::ConnectionStatusType::OrSymbol)
      REAUTH = T.let(:reauth, FinchAPI::Models::ConnectionStatusType::OrSymbol)
    end
  end
end
