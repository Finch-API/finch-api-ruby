# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Documents
        # Some parameter documentations has been truncated, see
        # {FinchAPI::Models::HRIS::DocumentListParams} for more details.
        #
        # **Beta:** This endpoint is in beta and may change. Retrieve a list of
        # company-wide documents.
        #
        # @overload list(individual_ids: nil, limit: nil, offset: nil, types: nil, request_options: {})
        #
        # @param individual_ids [Array<String>] Comma-delimited list of stable Finch uuids for each individual. If empty, defaul
        #
        # @param limit [Integer] Number of documents to return (defaults to all)
        #
        # @param offset [Integer] Index to start from (defaults to 0)
        #
        # @param types [Array<Symbol, FinchAPI::Models::HRIS::DocumentListParams::Type>] Comma-delimited list of document types to filter on. If empty, defaults to all t
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::HRIS::DocumentListResponse]
        #
        # @see FinchAPI::Models::HRIS::DocumentListParams
        def list(params = {})
          parsed, options = FinchAPI::HRIS::DocumentListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "employer/documents",
            query: parsed,
            model: FinchAPI::Models::HRIS::DocumentListResponse,
            options: options
          )
        end

        # **Beta:** This endpoint is in beta and may change. Retrieve details of a
        # specific document by its ID.
        #
        # @overload retreive(document_id, request_options: {})
        #
        # @param document_id [String] The unique identifier of the document.
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::HRIS::W42020, FinchAPI::Models::HRIS::W42005]
        #
        # @see FinchAPI::Models::HRIS::DocumentRetreiveParams
        def retreive(document_id, params = {})
          @client.request(
            method: :get,
            path: ["employer/documents/%1$s", document_id],
            model: FinchAPI::Models::HRIS::DocumentRetreiveResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [FinchAPI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
