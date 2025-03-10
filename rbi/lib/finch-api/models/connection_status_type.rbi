# typed: strong

module FinchAPI
  module Models
    class ConnectionStatusType < FinchAPI::Enum
      abstract!

      PENDING = :pending
      PROCESSING = :processing
      CONNECTED = :connected
      ERROR_NO_ACCOUNT_SETUP = :error_no_account_setup
      ERROR_PERMISSIONS = :error_permissions
      REAUTH = :reauth

      sig { override.returns(T::Array[Symbol]) }
      def self.values
      end
    end
  end
end
