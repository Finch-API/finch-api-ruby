# typed: strong

module FinchAPI
  module Models
    module Jobs
      class AutomatedListParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        sig { returns(T.nilable(Integer)) }
        def limit
        end

        sig { params(_: Integer).returns(Integer) }
        def limit=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def offset
        end

        sig { params(_: Integer).returns(Integer) }
        def offset=(_)
        end

        sig do
          params(
            limit: Integer,
            offset: Integer,
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(limit: nil, offset: nil, request_options: {})
        end

        sig { override.returns({limit: Integer, offset: Integer, request_options: FinchAPI::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
