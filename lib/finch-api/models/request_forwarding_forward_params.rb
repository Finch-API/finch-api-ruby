# frozen_string_literal: true

module FinchAPI
  module Models
    class RequestForwardingForwardParams < FinchAPI::BaseModel
      # @!parse
      #   extend FinchAPI::Type::RequestParameters::Converter
      include FinchAPI::RequestParameters

      # @!attribute method_
      #   The HTTP method for the forwarded request. Valid values include: `GET` , `POST`
      #     , `PUT` , `DELETE` , and `PATCH`.
      #
      #   @return [String]
      required :method_, String, api_name: :method

      # @!attribute route
      #   The URL route path for the forwarded request. This value must begin with a
      #     forward-slash ( / ) and may only contain alphanumeric characters, hyphens, and
      #     underscores.
      #
      #   @return [String]
      required :route, String

      # @!attribute data
      #   The body for the forwarded request. This value must be specified as either a
      #     string or a valid JSON object.
      #
      #   @return [String, nil]
      optional :data, String, nil?: true

      # @!attribute headers
      #   The HTTP headers to include on the forwarded request. This value must be
      #     specified as an object of key-value pairs. Example:
      #     `{"Content-Type": "application/xml", "X-API-Version": "v1" }`
      #
      #   @return [Object, nil]
      optional :headers, FinchAPI::Unknown, nil?: true

      # @!attribute params
      #   The query parameters for the forwarded request. This value must be specified as
      #     a valid JSON object rather than a query string.
      #
      #   @return [Object, nil]
      optional :params, FinchAPI::Unknown, nil?: true

      # @!parse
      #   # @param method_ [String]
      #   # @param route [String]
      #   # @param data [String, nil]
      #   # @param headers [Object, nil]
      #   # @param params [Object, nil]
      #   # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(method_:, route:, data: nil, headers: nil, params: nil, request_options: {}, **) = super

      # def initialize: (Hash | FinchAPI::BaseModel) -> void
    end
  end
end
