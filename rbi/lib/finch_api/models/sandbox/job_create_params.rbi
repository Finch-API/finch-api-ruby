# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class JobCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # The type of job to start. Currently the only supported type is `data_sync_all`
        sig { returns(FinchAPI::Models::Sandbox::JobCreateParams::Type::OrSymbol) }
        attr_accessor :type

        sig do
          params(
            type: FinchAPI::Models::Sandbox::JobCreateParams::Type::OrSymbol,
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The type of job to start. Currently the only supported type is `data_sync_all`
          type:,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {type: FinchAPI::Models::Sandbox::JobCreateParams::Type::OrSymbol, request_options: FinchAPI::RequestOptions}
            )
        end
        def to_hash; end

        # The type of job to start. Currently the only supported type is `data_sync_all`
        module Type
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::JobCreateParams::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATA_SYNC_ALL = T.let(:data_sync_all, FinchAPI::Models::Sandbox::JobCreateParams::Type::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::Sandbox::JobCreateParams::Type::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
