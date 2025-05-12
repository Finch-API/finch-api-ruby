# typed: strong

module FinchAPI
  module Models
    module HRIS
      class DocumentListResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Models::HRIS::DocumentListResponse,
              FinchAPI::Internal::AnyHash
            )
          end

        sig { returns(T::Array[FinchAPI::HRIS::DocumentResponse]) }
        attr_accessor :documents

        sig { returns(FinchAPI::Paging) }
        attr_reader :paging

        sig { params(paging: FinchAPI::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            documents: T::Array[FinchAPI::HRIS::DocumentResponse::OrHash],
            paging: FinchAPI::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(documents:, paging:)
        end

        sig do
          override.returns(
            {
              documents: T::Array[FinchAPI::HRIS::DocumentResponse],
              paging: FinchAPI::Paging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
