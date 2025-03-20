# frozen_string_literal: true

module FinchAPI
  module Models
    module ConnectionStatusType
      extend FinchAPI::Enum

      PENDING = :pending
      PROCESSING = :processing
      CONNECTED = :connected
      ERROR_NO_ACCOUNT_SETUP = :error_no_account_setup
      ERROR_PERMISSIONS = :error_permissions
      REAUTH = :reauth

      finalize!
    end
  end
end
