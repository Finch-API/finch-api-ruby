# typed: strong

module FinchAPI
  module Models
    module HRIS
      class DocumentListResponse < FinchAPI::BaseModel
        sig { returns(T::Array[FinchAPI::Models::HRIS::DocumentResponse]) }
        def documents
        end

        sig do
          params(_: T::Array[FinchAPI::Models::HRIS::DocumentResponse])
            .returns(T::Array[FinchAPI::Models::HRIS::DocumentResponse])
        end
        def documents=(_)
        end

        sig { returns(FinchAPI::Models::Paging) }
        def paging
        end

        sig { params(_: FinchAPI::Models::Paging).returns(FinchAPI::Models::Paging) }
        def paging=(_)
        end

        sig do
          params(documents: T::Array[FinchAPI::Models::HRIS::DocumentResponse], paging: FinchAPI::Models::Paging)
            .void
        end
        def initialize(documents:, paging:)
        end

        sig do
          override
            .returns({documents: T::Array[FinchAPI::Models::HRIS::DocumentResponse], paging: FinchAPI::Models::Paging})
        end
        def to_hash
        end
      end
    end
  end
end
