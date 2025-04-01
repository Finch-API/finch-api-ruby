# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Directory
        # Add new individuals to a sandbox company
        #
        # @overload create(body: nil, request_options: {})
        #
        # @param body [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body>]
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Object>]
        #
        # @see FinchAPI::Models::Sandbox::DirectoryCreateParams
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
