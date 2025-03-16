# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class JobCreateParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # The type of job to start. Currently the only supported type is `data_sync_all`
        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig do
          params(type: Symbol, request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
            .returns(T.attached_class)
        end
        def self.new(type:, request_options: {})
        end

        sig { override.returns({type: Symbol, request_options: FinchAPI::RequestOptions}) }
        def to_hash
        end

        # The type of job to start. Currently the only supported type is `data_sync_all`
        class Type < FinchAPI::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          DATA_SYNC_ALL = :data_sync_all
        end
      end
    end
  end
end
