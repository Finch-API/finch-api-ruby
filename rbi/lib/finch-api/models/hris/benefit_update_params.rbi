# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitUpdateParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig do
          params(
            description: String,
            request_options: T.any(
              FinchAPI::RequestOptions,
              T::Hash[Symbol, T.anything]
            )
          )
            .void
        end
        def initialize(description: nil, request_options: {})
        end

        sig { override.returns({description: String, request_options: FinchAPI::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
