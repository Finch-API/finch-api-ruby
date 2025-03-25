# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Documents
        # **Beta:** This endpoint is in beta and may change. Retrieve a list of
        #   company-wide documents.
        #
        # @param params [FinchAPI::Models::HRIS::DocumentListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :individual_ids Comma-delimited list of stable Finch uuids for each individual. If empty,
        #     defaults to all individuals
        #
        #   @option params [Integer] :limit Number of documents to return (defaults to all)
        #
        #   @option params [Integer] :offset Index to start from (defaults to 0)
        #
        #   @option params [Array<Symbol, FinchAPI::Models::HRIS::DocumentListParams::Type>] :types Comma-delimited list of document types to filter on. If empty, defaults to all
        #     types
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::Models::HRIS::DocumentListResponse]
        def list(params = {})
          parsed, options = FinchAPI::Models::HRIS::DocumentListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "employer/documents",
            query: parsed,
            model: FinchAPI::Models::HRIS::DocumentListResponse,
            options: options
          )
        end

        # **Beta:** This endpoint is in beta and may change. Retrieve details of a
        #   specific document by its ID.
        #
        # @param document_id [String] The unique identifier of the document.
        #
        # @param params [FinchAPI::Models::HRIS::DocumentRetreiveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::Models::HRIS::W42020, FinchAPI::Models::HRIS::W42005]
        def retreive(document_id, params = {})
          @client.request(
            method: :get,
            path: ["employer/documents/%0s", document_id],
            model: FinchAPI::Models::HRIS::DocumentRetreiveResponse,
            options: params[:request_options]
          )
        end

        # @param client [FinchAPI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
