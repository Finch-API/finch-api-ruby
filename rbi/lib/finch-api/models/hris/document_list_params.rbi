# typed: strong

module FinchAPI
  module Models
    module HRIS
      class DocumentListParams < FinchAPI::BaseModel
        extend FinchAPI::Type::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # Comma-delimited list of stable Finch uuids for each individual. If empty,
        #   defaults to all individuals
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :individual_ids

        sig { params(individual_ids: T::Array[String]).void }
        attr_writer :individual_ids

        # Number of documents to return (defaults to all)
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Index to start from (defaults to 0)
        sig { returns(T.nilable(Integer)) }
        attr_reader :offset

        sig { params(offset: Integer).void }
        attr_writer :offset

        # Comma-delimited list of document types to filter on. If empty, defaults to all
        #   types
        sig { returns(T.nilable(T::Array[FinchAPI::Models::HRIS::DocumentListParams::Type::OrSymbol])) }
        attr_reader :types

        sig { params(types: T::Array[FinchAPI::Models::HRIS::DocumentListParams::Type::OrSymbol]).void }
        attr_writer :types

        sig do
          params(
            individual_ids: T::Array[String],
            limit: Integer,
            offset: Integer,
            types: T::Array[FinchAPI::Models::HRIS::DocumentListParams::Type::OrSymbol],
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash)
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

          sig { override.returns(T::Array[FinchAPI::Models::HRIS::DocumentListParams::Type::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
