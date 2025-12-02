# frozen_string_literal: true

module FinchAPI
  module Resources
    class RequestForwarding
      # Some parameter documentations has been truncated, see
      # {FinchAPI::Models::RequestForwardingForwardParams} for more details.
      #
      # The Forward API allows you to make direct requests to an employment system. If
      # Finch's unified API doesn't have a data model that cleanly fits your needs, then
      # Forward allows you to push or pull data models directly against an integration's
      # API.
      #
      # @overload forward(method_:, route:, data: nil, params: nil, request_headers: nil, request_options: {})
      #
      # @param method_ [String] The HTTP method for the forwarded request. Valid values include: `GET` , `POST`
      #
      # @param route [String] The URL route path for the forwarded request. This value must begin with a forwa
      #
      # @param data [String, nil] The body for the forwarded request. This value must be specified as either a str
      #
      # @param params [Hash{Symbol=>Object, nil}, nil] The query parameters for the forwarded request. This value must be specified as
      #
      # @param request_headers [Hash{Symbol=>Object, nil}, nil] The HTTP headers to include on the forwarded request. This value must be specifi
      #
      # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [FinchAPI::Models::RequestForwardingForwardResponse]
      #
      # @see FinchAPI::Models::RequestForwardingForwardParams
      def forward(params)
        parsed, options = FinchAPI::RequestForwardingForwardParams.dump_request(params)
        @client.request(
          method: :post,
          path: "forward",
          body: parsed,
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
