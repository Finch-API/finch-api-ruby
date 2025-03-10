# frozen_string_literal: true

module FinchAPI
  module Resources
    class HRIS
      class Directory
        # Read company directory and organization structure
        #
        # @param params [FinchAPI::Models::HRIS::DirectoryListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Integer] :limit Number of employees to return (defaults to all)
        #
        #   @option params [Integer] :offset Index to start from (defaults to 0)
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::IndividualsPage<FinchAPI::Models::HRIS::IndividualInDirectory>]
        #
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

        # @param client [FinchAPI::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
