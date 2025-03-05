# typed: strong

module FinchAPI
  module Models
    module HRIS
      class DocumentListParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        sig { returns(T.nilable(T::Array[String])) }
        def individual_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def individual_ids=(_)
        end

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

        sig { returns(T.nilable(T::Array[Symbol])) }
        def types
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def types=(_)
        end

        sig do
          params(
            individual_ids: T::Array[String],
            limit: Integer,
            offset: Integer,
            types: T::Array[Symbol],
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(individual_ids: nil, limit: nil, offset: nil, types: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                individual_ids: T::Array[String],
                limit: Integer,
                offset: Integer,
                types: T::Array[Symbol],
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Type < FinchAPI::Enum
          abstract!

          W4_2020 = :w4_2020
          W4_2005 = :w4_2005

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
