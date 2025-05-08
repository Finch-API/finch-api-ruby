# frozen_string_literal: true

module FinchAPI
  module Models
    class OperationSupportMatrix < FinchAPI::Internal::Type::BaseModel
      # @!attribute create
      #   - `supported`: This operation is supported by both the provider and Finch
      #   - `not_supported_by_finch`: This operation is not supported by Finch but
      #     supported by the provider
      #   - `not_supported_by_provider`: This operation is not supported by the provider,
      #     so Finch cannot support
      #   - `client_access_only`: This behavior is supported by the provider, but only
      #     available to the client and not to Finch
      #
      #   @return [Symbol, FinchAPI::OperationSupport, nil]
      optional :create, enum: -> { FinchAPI::OperationSupport }

      # @!attribute delete
      #   - `supported`: This operation is supported by both the provider and Finch
      #   - `not_supported_by_finch`: This operation is not supported by Finch but
      #     supported by the provider
      #   - `not_supported_by_provider`: This operation is not supported by the provider,
      #     so Finch cannot support
      #   - `client_access_only`: This behavior is supported by the provider, but only
      #     available to the client and not to Finch
      #
      #   @return [Symbol, FinchAPI::OperationSupport, nil]
      optional :delete, enum: -> { FinchAPI::OperationSupport }

      # @!attribute read
      #   - `supported`: This operation is supported by both the provider and Finch
      #   - `not_supported_by_finch`: This operation is not supported by Finch but
      #     supported by the provider
      #   - `not_supported_by_provider`: This operation is not supported by the provider,
      #     so Finch cannot support
      #   - `client_access_only`: This behavior is supported by the provider, but only
      #     available to the client and not to Finch
      #
      #   @return [Symbol, FinchAPI::OperationSupport, nil]
      optional :read, enum: -> { FinchAPI::OperationSupport }

      # @!attribute update
      #   - `supported`: This operation is supported by both the provider and Finch
      #   - `not_supported_by_finch`: This operation is not supported by Finch but
      #     supported by the provider
      #   - `not_supported_by_provider`: This operation is not supported by the provider,
      #     so Finch cannot support
      #   - `client_access_only`: This behavior is supported by the provider, but only
      #     available to the client and not to Finch
      #
      #   @return [Symbol, FinchAPI::OperationSupport, nil]
      optional :update, enum: -> { FinchAPI::OperationSupport }

      # @!method initialize(create: nil, delete: nil, read: nil, update: nil)
      #   Some parameter documentations has been truncated, see
      #   {FinchAPI::OperationSupportMatrix} for more details.
      #
      #   @param create [Symbol, FinchAPI::OperationSupport] - `supported`: This operation is supported by both the provider and Finch
      #
      #   @param delete [Symbol, FinchAPI::OperationSupport] - `supported`: This operation is supported by both the provider and Finch
      #
      #   @param read [Symbol, FinchAPI::OperationSupport] - `supported`: This operation is supported by both the provider and Finch
      #
      #   @param update [Symbol, FinchAPI::OperationSupport] - `supported`: This operation is supported by both the provider and Finch
    end
  end
end
