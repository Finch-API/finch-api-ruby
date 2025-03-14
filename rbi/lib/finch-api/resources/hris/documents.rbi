# typed: strong

module FinchAPI
  module Resources
    class HRIS
      class Documents
        # **Beta:** This endpoint is in beta and may change.
        #   Retrieve a list of company-wide documents.
        sig do
          params(
            individual_ids: T::Array[String],
            limit: Integer,
            offset: Integer,
            types: T::Array[Symbol],
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::Models::HRIS::DocumentListResponse)
        end
        def list(individual_ids: nil, limit: nil, offset: nil, types: nil, request_options: {})
        end

        # **Beta:** This endpoint is in beta and may change.
        #   Retrieve details of a specific document by its ID.
        sig do
          params(
            document_id: String,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(T.any(FinchAPI::Models::HRIS::W42020, FinchAPI::Models::HRIS::W42005))
        end
        def retreive(document_id, request_options: {})
        end

        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
