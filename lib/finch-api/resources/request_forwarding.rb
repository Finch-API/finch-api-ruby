# frozen_string_literal: true

module FinchAPI
  module Resources
    class RequestForwarding
      # The Forward API allows you to make direct requests to an employment system. If
      #   Finch’s unified API doesn’t have a data model that cleanly fits your needs, then
      #   Forward allows you to push or pull data models directly against an integration’s
      #   API.
      #
      # @param params [FinchAPI::Models::RequestForwardingForwardParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :method_ The HTTP method for the forwarded request. Valid values include: `GET` , `POST`
      #     , `PUT` , `DELETE` , and `PATCH`.
      #
      #   @option params [String] :route The URL route path for the forwarded request. This value must begin with a
      #     forward-slash ( / ) and may only contain alphanumeric characters, hyphens, and
      #     underscores.
      #
      #   @option params [String, nil] :data The body for the forwarded request. This value must be specified as either a
      #     string or a valid JSON object.
      #
      #   @option params [Object, nil] :headers The HTTP headers to include on the forwarded request. This value must be
      #     specified as an object of key-value pairs. Example:
      #     `{"Content-Type": "application/xml", "X-API-Version": "v1" }`
      #
      #   @option params [Object, nil] :params The query parameters for the forwarded request. This value must be specified as
      #     a valid JSON object rather than a query string.
      #
      #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [FinchAPI::Models::RequestForwardingForwardResponse]
      def forward(params)
        parsed, options = FinchAPI::Models::RequestForwardingForwardParams.dump_request(params)
        @client.request(
          method: :post,
          path: "forward",
          body: parsed,
          model: FinchAPI::Models::RequestForwardingForwardResponse,
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
