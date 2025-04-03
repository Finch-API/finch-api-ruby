# typed: strong

module FinchAPI
  module Models
    module HRIS
      class DocumentResponse < FinchAPI::Internal::Type::BaseModel
        # A stable Finch id for the document.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The ID of the individual associated with the document. This will be null for
        #   employer-level documents.
        sig { returns(T.nilable(String)) }
        attr_accessor :individual_id

        # The type of document.
        sig { returns(T.nilable(FinchAPI::Models::HRIS::DocumentResponse::Type::TaggedSymbol)) }
        attr_reader :type

        sig { params(type: FinchAPI::Models::HRIS::DocumentResponse::Type::OrSymbol).void }
        attr_writer :type

        # A URL to access the document. Format:
        #   `https://api.tryfinch.com/employer/documents/:document_id`.
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
            type: FinchAPI::Models::HRIS::DocumentResponse::Type::OrSymbol,
            url: String,
            year: T.nilable(Float)
          )
            .returns(T.attached_class)
        end
        def self.new(id: nil, individual_id: nil, type: nil, url: nil, year: nil)
        end

        sig do
          override
            .returns(
              {
                id: String,
                individual_id: T.nilable(String),
                type: FinchAPI::Models::HRIS::DocumentResponse::Type::TaggedSymbol,
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

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::HRIS::DocumentResponse::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, FinchAPI::Models::HRIS::DocumentResponse::Type::TaggedSymbol) }

          W4_2020 = T.let(:w4_2020, FinchAPI::Models::HRIS::DocumentResponse::Type::TaggedSymbol)
          W4_2005 = T.let(:w4_2005, FinchAPI::Models::HRIS::DocumentResponse::Type::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::HRIS::DocumentResponse::Type::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
