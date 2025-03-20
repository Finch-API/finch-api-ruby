# typed: strong

module FinchAPI
  module Models
    module HRIS
      class DocumentListParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # Comma-delimited list of stable Finch uuids for each individual. If empty,
        #   defaults to all individuals
        sig { returns(T.nilable(T::Array[String])) }
        def individual_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def individual_ids=(_)
        end

        # Number of documents to return (defaults to all)
        sig { returns(T.nilable(Integer)) }
        def limit
        end

        sig { params(_: Integer).returns(Integer) }
        def limit=(_)
        end

        # Index to start from (defaults to 0)
        sig { returns(T.nilable(Integer)) }
        def offset
        end

        sig { params(_: Integer).returns(Integer) }
        def offset=(_)
        end

        # Comma-delimited list of document types to filter on. If empty, defaults to all
        #   types
        sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::DocumentListParams::Type::OrSymbol])) }
        def types
        end

        sig do
          params(_: T::Array[FinchAPI::Models::HRIS::DocumentListParams::Type::OrSymbol])
            .returns(T::Array[FinchAPI::Models::HRIS::DocumentListParams::Type::OrSymbol])
        end
        def types=(_)
        end

        sig do
          params(
            individual_ids: T::Array[String],
            limit: Integer,
            offset: Integer,
            types: T::Array[FinchAPI::Models::HRIS::DocumentListParams::Type::OrSymbol],
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(individual_ids: nil, limit: nil, offset: nil, types: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                individual_ids: T::Array[String],
                limit: Integer,
                offset: Integer,
                types: T::Array[FinchAPI::Models::HRIS::DocumentListParams::Type::OrSymbol],
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash
        end

        module Type
          extend FinchAPI::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::DocumentListParams::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, FinchAPI::Models::HRIS::DocumentListParams::Type::TaggedSymbol) }

          W4_2020 = T.let(:w4_2020, FinchAPI::Models::HRIS::DocumentListParams::Type::TaggedSymbol)
          W4_2005 = T.let(:w4_2005, FinchAPI::Models::HRIS::DocumentListParams::Type::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[FinchAPI::Models::HRIS::DocumentListParams::Type::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
