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

        sig do
          params(_: T.any(FinchAPI::Models::Paging, FinchAPI::Util::AnyHash))
            .returns(T.any(FinchAPI::Models::Paging, FinchAPI::Util::AnyHash))
        end
        def paging=(_)
        end

        sig do
          params(
            documents: T::Array[T.any(FinchAPI::Models::HRIS::DocumentResponse, FinchAPI::Util::AnyHash)],
            paging: T.any(FinchAPI::Models::Paging, FinchAPI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(documents:, paging:)
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
