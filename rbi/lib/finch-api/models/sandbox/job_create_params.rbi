# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class JobCreateParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig do
          params(
            type: Symbol,
            request_options: T.any(
              FinchAPI::RequestOptions,
              T::Hash[Symbol, T.anything]
            )
          ).void
        end
        def initialize(type:, request_options: {})
        end

        sig { override.returns({type: Symbol, request_options: FinchAPI::RequestOptions}) }
        def to_hash
        end

        class Type < FinchAPI::Enum
          abstract!

          DATA_SYNC_ALL = :data_sync_all

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
