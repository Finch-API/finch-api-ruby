# frozen_string_literal: true

module FinchAPI
  module Models
    module ConnectionStatusType
      extend FinchAPI::Internal::Type::Enum

      PENDING = :pending
      PROCESSING = :processing
      CONNECTED = :connected
      ERROR_NO_ACCOUNT_SETUP = :error_no_account_setup
      ERROR_PERMISSIONS = :error_permissions
      REAUTH = :reauth

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
