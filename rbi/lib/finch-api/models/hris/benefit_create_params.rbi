# typed: strong

module FinchAPI
  module Models
    module HRIS
      class BenefitCreateParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def frequency
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def frequency=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def type
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def type=(_)
        end

        sig do
          params(
            description: String,
            frequency: T.nilable(Symbol),
            type: T.nilable(Symbol),
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(description: nil, frequency: nil, type: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                description: String,
                frequency: T.nilable(Symbol),
                type: T.nilable(Symbol),
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
