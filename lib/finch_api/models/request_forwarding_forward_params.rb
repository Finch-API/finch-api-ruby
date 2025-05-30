# frozen_string_literal: true

module FinchAPI
  module Models
    # @see FinchAPI::Resources::RequestForwarding#forward
    class RequestForwardingForwardParams < FinchAPI::Internal::Type::BaseModel
      extend FinchAPI::Internal::Type::RequestParameters::Converter
      include FinchAPI::Internal::Type::RequestParameters

      # @!attribute method_
      #   The HTTP method for the forwarded request. Valid values include: `GET` , `POST`
      #   , `PUT` , `DELETE` , and `PATCH`.
      #
      #   @return [String]
      required :method_, String, api_name: :method

      # @!attribute route
      #   The URL route path for the forwarded request. This value must begin with a
      #   forward-slash ( / ) and may only contain alphanumeric characters, hyphens, and
      #   underscores.
      #
      #   @return [String]
      required :route, String

      # @!attribute data
      #   The body for the forwarded request. This value must be specified as either a
      #   string or a valid JSON object.
      #
      #   @return [String, nil]
      optional :data, String, nil?: true

      # @!attribute headers
      #   The HTTP headers to include on the forwarded request. This value must be
      #   specified as an object of key-value pairs. Example:
      #   `{"Content-Type": "application/xml", "X-API-Version": "v1" }`
      #
      #   @return [Object, nil]
      optional :headers, FinchAPI::Internal::Type::Unknown, nil?: true

      # @!attribute params
      #   The query parameters for the forwarded request. This value must be specified as
      #   a valid JSON object rather than a query string.
      #
      #   @return [Object, nil]
      optional :params, FinchAPI::Internal::Type::Unknown, nil?: true

      # @!method initialize(method_:, route:, data: nil, headers: nil, params: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {FinchAPI::Models::RequestForwardingForwardParams} for more details.
      #
      #   @param method_ [String] The HTTP method for the forwarded request. Valid values include: `GET` , `POST`
      #
      #   @param route [String] The URL route path for the forwarded request. This value must begin with a forwa
      #
      #   @param data [String, nil] The body for the forwarded request. This value must be specified as either a str
      #
      #   @param headers [Object, nil] The HTTP headers to include on the forwarded request. This value must be specifi
      #
      #   @param params [Object, nil] The query parameters for the forwarded request. This value must be specified as
      #
      #   @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
