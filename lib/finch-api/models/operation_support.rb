# frozen_string_literal: true

module FinchAPI
  module Models
    # @abstract
    #
    # - `supported`: This operation is supported by both the provider and Finch
    #   - `not_supported_by_finch`: This operation is not supported by Finch but
    #     supported by the provider
    #   - `not_supported_by_provider`: This operation is not supported by the provider,
    #     so Finch cannot support
    #   - `client_access_only`: This behavior is supported by the provider, but only
    #     available to the client and not to Finch
    #
    # @example
    # ```ruby
    # case operation_support
    # in :supported
    #   # ...
    # in :not_supported_by_finch
    #   # ...
    # in :not_supported_by_provider
    #   # ...
    # in :client_access_only
    #   # ...
    # end
    # ```
    class OperationSupport < FinchAPI::Enum
      SUPPORTED = :supported
      NOT_SUPPORTED_BY_FINCH = :not_supported_by_finch
      NOT_SUPPORTED_BY_PROVIDER = :not_supported_by_provider
      CLIENT_ACCESS_ONLY = :client_access_only

      finalize!

      # @!parse
      #   # @return [Array<Symbol>]
      #   #
      #   def self.values; end
    end
  end
end
