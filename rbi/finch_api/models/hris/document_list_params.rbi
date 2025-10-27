# typed: strong

module FinchAPI
  module Models
    module HRIS
      class DocumentListParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::HRIS::DocumentListParams,
              FinchAPI::Internal::AnyHash
            )
          end

        # The entity IDs to specify which entities' data to access.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :entity_ids

        sig { params(entity_ids: T::Array[String]).void }
        attr_writer :entity_ids

        # Comma-delimited list of stable Finch uuids for each individual. If empty,
        # defaults to all individuals
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
        # types
        sig do
          returns(
            T.nilable(
              T::Array[FinchAPI::HRIS::DocumentListParams::Type::OrSymbol]
            )
          )
        end
        attr_reader :types

        sig do
          params(
            types: T::Array[FinchAPI::HRIS::DocumentListParams::Type::OrSymbol]
          ).void
        end
        attr_writer :types

        sig do
          params(
            entity_ids: T::Array[String],
            individual_ids: T::Array[String],
            limit: Integer,
            offset: Integer,
            types: T::Array[FinchAPI::HRIS::DocumentListParams::Type::OrSymbol],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The entity IDs to specify which entities' data to access.
          entity_ids: nil,
          # Comma-delimited list of stable Finch uuids for each individual. If empty,
          # defaults to all individuals
          individual_ids: nil,
          # Number of documents to return (defaults to all)
          limit: nil,
          # Index to start from (defaults to 0)
          offset: nil,
          # Comma-delimited list of document types to filter on. If empty, defaults to all
          # types
          types: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              entity_ids: T::Array[String],
              individual_ids: T::Array[String],
              limit: Integer,
              offset: Integer,
              types:
                T::Array[FinchAPI::HRIS::DocumentListParams::Type::OrSymbol],
              request_options: FinchAPI::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Type
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, FinchAPI::HRIS::DocumentListParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          W4_2020 =
            T.let(
              :w4_2020,
              FinchAPI::HRIS::DocumentListParams::Type::TaggedSymbol
            )
          W4_2005 =
            T.let(
              :w4_2005,
              FinchAPI::HRIS::DocumentListParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[FinchAPI::HRIS::DocumentListParams::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
