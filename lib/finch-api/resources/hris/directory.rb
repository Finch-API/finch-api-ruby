# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Directory
        # Read company directory and organization structure
        #
        # @overload list(limit: nil, offset: nil, request_options: {})
        #
        # @param limit [Integer]
        # @param offset [Integer]
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::IndividualsPage<FinchAPI::Models::HRIS::IndividualInDirectory>]
        #
        # @see FinchAPI::Models::HRIS::DirectoryListParams
        def list(params = {})
          parsed, options = FinchAPI::Models::HRIS::DirectoryListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "employer/directory",
            query: parsed,
            page: FinchAPI::IndividualsPage,
            model: FinchAPI::Models::HRIS::IndividualInDirectory,
            options: options
          )
        end

        # @deprecated use `list` instead
        #
        # Read company directory and organization structure
        alias_method :list_individuals, :list

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
