# frozen_string_literal: true

module FinchAPI
  module Models
    class OperationSupportMatrix < FinchAPI::Internal::Type::BaseModel
      # @!attribute [r] create
      #   - `supported`: This operation is supported by both the provider and Finch
      #     - `not_supported_by_finch`: This operation is not supported by Finch but
      #       supported by the provider
      #     - `not_supported_by_provider`: This operation is not supported by the provider,
      #       so Finch cannot support
      #     - `client_access_only`: This behavior is supported by the provider, but only
      #       available to the client and not to Finch
      #
      #   @return [Symbol, FinchAPI::Models::OperationSupport, nil]
      optional :create, enum: -> { FinchAPI::Models::OperationSupport }

      # @!parse
      #   # @return [Symbol, FinchAPI::Models::OperationSupport]
      #   attr_writer :create

      # @!attribute [r] delete
      #   - `supported`: This operation is supported by both the provider and Finch
      #     - `not_supported_by_finch`: This operation is not supported by Finch but
      #       supported by the provider
      #     - `not_supported_by_provider`: This operation is not supported by the provider,
      #       so Finch cannot support
      #     - `client_access_only`: This behavior is supported by the provider, but only
      #       available to the client and not to Finch
      #
      #   @return [Symbol, FinchAPI::Models::OperationSupport, nil]
      optional :delete, enum: -> { FinchAPI::Models::OperationSupport }

      # @!parse
      #   # @return [Symbol, FinchAPI::Models::OperationSupport]
      #   attr_writer :delete

      # @!attribute [r] read
      #   - `supported`: This operation is supported by both the provider and Finch
      #     - `not_supported_by_finch`: This operation is not supported by Finch but
      #       supported by the provider
      #     - `not_supported_by_provider`: This operation is not supported by the provider,
      #       so Finch cannot support
      #     - `client_access_only`: This behavior is supported by the provider, but only
      #       available to the client and not to Finch
      #
      #   @return [Symbol, FinchAPI::Models::OperationSupport, nil]
      optional :read, enum: -> { FinchAPI::Models::OperationSupport }

      # @!parse
      #   # @return [Symbol, FinchAPI::Models::OperationSupport]
      #   attr_writer :read

      # @!attribute [r] update
      #   - `supported`: This operation is supported by both the provider and Finch
      #     - `not_supported_by_finch`: This operation is not supported by Finch but
      #       supported by the provider
      #     - `not_supported_by_provider`: This operation is not supported by the provider,
      #       so Finch cannot support
      #     - `client_access_only`: This behavior is supported by the provider, but only
      #       available to the client and not to Finch
      #
      #   @return [Symbol, FinchAPI::Models::OperationSupport, nil]
      optional :update, enum: -> { FinchAPI::Models::OperationSupport }

      # @!parse
      #   # @return [Symbol, FinchAPI::Models::OperationSupport]
      #   attr_writer :update

      # @!parse
      #   # @param create [Symbol, FinchAPI::Models::OperationSupport]
      #   # @param delete [Symbol, FinchAPI::Models::OperationSupport]
      #   # @param read [Symbol, FinchAPI::Models::OperationSupport]
      #   # @param update [Symbol, FinchAPI::Models::OperationSupport]
      #   #
      #   def initialize(create: nil, delete: nil, read: nil, update: nil, **) = super

      # def initialize: (Hash | FinchAPI::Internal::Type::BaseModel) -> void
    end
  end
end
