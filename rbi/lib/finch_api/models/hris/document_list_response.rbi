# typed: strong

module FinchAPI
  module Models
    module HRIS
      class DocumentListResponse < FinchAPI::BaseModel
        sig { returns(T::Array[FinchAPI::Models::HRIS::DocumentResponse]) }
        attr_accessor :documents

        sig { returns(FinchAPI::Models::Paging) }
        attr_reader :paging

        sig { params(paging: T.any(FinchAPI::Models::Paging, FinchAPI::Internal::Util::AnyHash)).void }
        attr_writer :paging

        sig do
          params(
            documents: T::Array[T.any(FinchAPI::Models::HRIS::DocumentResponse, FinchAPI::Internal::Util::AnyHash)],
            paging: T.any(FinchAPI::Models::Paging, FinchAPI::Internal::Util::AnyHash)
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
