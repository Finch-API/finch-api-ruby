# typed: strong

module FinchAPI
  module Models
    module HRIS
      class DocumentResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

        # A stable Finch id for the document.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The ID of the individual associated with the document. This will be null for
        # employer-level documents.
        sig { returns(T.nilable(String)) }
        attr_accessor :individual_id

        # The type of document.
        sig do
          returns(
            T.nilable(FinchAPI::HRIS::DocumentResponse::Type::TaggedSymbol)
          )
        end
        attr_reader :type

        sig do
          params(type: FinchAPI::HRIS::DocumentResponse::Type::OrSymbol).void
        end
        attr_writer :type

        # A URL to access the document. Format:
        # `https://api.tryfinch.com/employer/documents/:document_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        # The year the document applies to, if available.
        sig { returns(T.nilable(Float)) }
        attr_accessor :year

        sig do
          params(
            id: String,
            individual_id: T.nilable(String),
            type: FinchAPI::HRIS::DocumentResponse::Type::OrSymbol,
            url: String,
            year: T.nilable(Float)
          ).returns(T.attached_class)
        end
        def self.new(
          # A stable Finch id for the document.
          id: nil,
          # The ID of the individual associated with the document. This will be null for
          # employer-level documents.
          individual_id: nil,
          # The type of document.
          type: nil,
          # A URL to access the document. Format:
          # `https://api.tryfinch.com/employer/documents/:document_id`.
          url: nil,
          # The year the document applies to, if available.
          year: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              individual_id: T.nilable(String),
              type: FinchAPI::HRIS::DocumentResponse::Type::TaggedSymbol,
              url: String,
              year: T.nilable(Float)
            }
          )
        end
        def to_hash
        end

        # The type of document.
        module Type
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, FinchAPI::HRIS::DocumentResponse::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          W4_2020 =
            T.let(
              :w4_2020,
              FinchAPI::HRIS::DocumentResponse::Type::TaggedSymbol
            )
          W4_2005 =
            T.let(
              :w4_2005,
              FinchAPI::HRIS::DocumentResponse::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[FinchAPI::HRIS::DocumentResponse::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
