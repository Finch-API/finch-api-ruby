# typed: strong

module FinchAPI
  module Models
    class OperationSupport < FinchAPI::Enum
      abstract!

      SUPPORTED = :supported
      NOT_SUPPORTED_BY_FINCH = :not_supported_by_finch
      NOT_SUPPORTED_BY_PROVIDER = :not_supported_by_provider
      CLIENT_ACCESS_ONLY = :client_access_only

      class << self
        sig { override.returns(T::Array[Symbol]) }
        def values
        end
      end
    end
  end
end
