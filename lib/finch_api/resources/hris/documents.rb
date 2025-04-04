# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Documents
        # **Beta:** This endpoint is in beta and may change. Retrieve a list of
        #   company-wide documents.
        #
        # @overload list(individual_ids: nil, limit: nil, offset: nil, types: nil, request_options: {})
        #
        # @param individual_ids [Array<String>]
        # @param limit [Integer]
        # @param offset [Integer]
        # @param types [Array<Symbol, FinchAPI::Models::HRIS::DocumentListParams::Type>]
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::HRIS::DocumentListResponse]
        #
        # @see FinchAPI::Models::HRIS::DocumentListParams
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
        # @overload retreive(document_id, request_options: {})
        #
        # @param document_id [String]
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
