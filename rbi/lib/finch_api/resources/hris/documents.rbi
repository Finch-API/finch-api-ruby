# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Documents
        # **Beta:** This endpoint is in beta and may change. Retrieve a list of
        # company-wide documents.
        sig do
          params(
            individual_ids: T::Array[String],
            limit: Integer,
            offset: Integer,
            types: T::Array[FinchAPI::Models::HRIS::DocumentListParams::Type::OrSymbol],
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash))
          )
            .returns(FinchAPI::Models::HRIS::DocumentListResponse)
        end
        def list(
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
        ); end
        # **Beta:** This endpoint is in beta and may change. Retrieve details of a
        # specific document by its ID.
        sig do
          params(
            document_id: String,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash))
          )
            .returns(T.any(FinchAPI::Models::HRIS::W42020, FinchAPI::Models::HRIS::W42005))
        end
        def retreive(
          # The unique identifier of the document.
          document_id,
          request_options: {}
        ); end
        # @api private
        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
