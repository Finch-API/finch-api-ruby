# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Directory
        # Some parameter documentations has been truncated, see
        # {FinchAPI::Models::Sandbox::DirectoryCreateParams} for more details.
        #
        # Add new individuals to a sandbox company
        #
        # @overload create(body: nil, request_options: {})
        #
        # @param body [Array<FinchAPI::Models::Sandbox::DirectoryCreateParams::Body>] Array of individuals to create. Takes all combined fields from `/individual` and
        # ...
        #
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
            model: FinchAPI::Internal::Type::ArrayOf[FinchAPI::Internal::Type::Unknown],
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
