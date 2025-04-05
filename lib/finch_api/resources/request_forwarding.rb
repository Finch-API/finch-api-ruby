# frozen_string_literal: true

module FinchAPI
  module Resources
    class RequestForwarding
      # The Forward API allows you to make direct requests to an employment system. If
      # Finch’s unified API doesn’t have a data model that cleanly fits your needs, then
      # Forward allows you to push or pull data models directly against an integration’s
      # API.
      #
      # @overload forward(method_:, route:, data: nil, headers: nil, params: nil, request_options: {})
      #
      # @param method_ [String]
      # @param route [String]
      # @param data [String, nil]
      # @param headers [Object, nil]
      # @param params [Object, nil]
      # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [FinchAPI::Models::RequestForwardingForwardResponse]
      #
      # @see FinchAPI::Models::RequestForwardingForwardParams
      def forward(params)
        parsed, options = FinchAPI::Models::RequestForwardingForwardParams.dump_request(params)
        @client.request(
          method: :post,
          path: "forward",
          body: parsed.transform_keys(method_: :method),
          model: FinchAPI::Models::RequestForwardingForwardResponse,
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
