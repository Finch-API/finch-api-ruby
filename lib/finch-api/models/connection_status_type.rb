# frozen_string_literal: true

module FinchAPI
  module Models
    # @abstract
    #
    # @example
    # ```ruby
    # case connection_status_type
    # in :pending
    #   # ...
    # in :processing
    #   # ...
    # in :connected
    #   # ...
    # in :error_no_account_setup
    #   # ...
    # in :error_permissions
    #   # ...
    # in ...
    #   #...
    # end
    # ```
    class ConnectionStatusType < FinchAPI::Enum
      PENDING = :pending
      PROCESSING = :processing
      CONNECTED = :connected
      ERROR_NO_ACCOUNT_SETUP = :error_no_account_setup
      ERROR_PERMISSIONS = :error_permissions
      REAUTH = :reauth

      finalize!

      # @!parse
      #   # @return [Array<Symbol>]
      #   #
      #   def self.values; end
    end
  end
end
