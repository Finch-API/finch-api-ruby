# typed: strong

module FinchAPI
  module Models
    class ConnectionStatusType < FinchAPI::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      PENDING = :pending
      PROCESSING = :processing
      CONNECTED = :connected
      ERROR_NO_ACCOUNT_SETUP = :error_no_account_setup
      ERROR_PERMISSIONS = :error_permissions
      REAUTH = :reauth
    end
  end
end
