# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Directory
        # Add new individuals to a sandbox company
        #
        # @param params [FinchAPI::Models::Sandbox::DirectoryCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body>] :body Array of individuals to create. Takes all combined fields from `/individual` and
        #     `/employment` endpoints. All fields are optional.
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Object>]
        def create(params = {})
          parsed, options = FinchAPI::Models::Sandbox::DirectoryCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "sandbox/directory",
            body: parsed[:body],
            model: FinchAPI::ArrayOf[FinchAPI::Unknown],
            options: options
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
