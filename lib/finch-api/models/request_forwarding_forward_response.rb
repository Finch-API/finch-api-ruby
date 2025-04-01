# frozen_string_literal: true

module FinchAPI
  module Models
    class RequestForwardingForwardResponse < FinchAPI::BaseModel
      # @!attribute data
      #   A string representation of the HTTP response body of the forwarded request’s
      #     response received from the underlying integration’s API. This field may be null
      #     in the case where the upstream system’s response is empty.
      #
      #   @return [String, nil]
      required :data, String, nil?: true

      # @!attribute headers
      #   The HTTP headers of the forwarded request’s response, exactly as received from
      #     the underlying integration’s API.
      #
      #   @return [Object, nil]
      required :headers, FinchAPI::Unknown, nil?: true

      # @!attribute request
      #   An object containing details of your original forwarded request, for your ease
      #     of reference.
      #
      #   @return [FinchAPI::Models::RequestForwardingForwardResponse::Request]
      required :request, -> { FinchAPI::Models::RequestForwardingForwardResponse::Request }

      # @!attribute status_code
      #   The HTTP status code of the forwarded request’s response, exactly received from
      #     the underlying integration’s API. This value will be returned as an integer.
      #
      #   @return [Integer]
      required :status_code, Integer, api_name: :statusCode

      # @!parse
      #   # @param data [String, nil]
      #   # @param headers [Object, nil]
      #   # @param request [FinchAPI::Models::RequestForwardingForwardResponse::Request]
      #   # @param status_code [Integer]
      #   #
      #   def initialize(data:, headers:, request:, status_code:, **) = super

      # def initialize: (Hash | FinchAPI::BaseModel) -> void

      # @see FinchAPI::Models::RequestForwardingForwardResponse#request
      class Request < FinchAPI::BaseModel
        # @!attribute data
        #   The body that was specified for the forwarded request. If a value was not
        #     specified in the original request, this value will be returned as null ;
        #     otherwise, this value will always be returned as a string.
        #
        #   @return [String, nil]
        required :data, String, nil?: true

        # @!attribute headers
        #   The specified HTTP headers that were included in the forwarded request. If no
        #     headers were specified, this will be returned as `null`.
        #
        #   @return [Object, nil]
        required :headers, FinchAPI::Unknown, nil?: true

        # @!attribute method_
        #   The HTTP method that was specified for the forwarded request. Valid values
        #     include: `GET` , `POST` , `PUT` , `DELETE` , and `PATCH`.
        #
        #   @return [String]
        required :method_, String, api_name: :method

        # @!attribute params
        #   The query parameters that were included in the forwarded request. If no query
        #     parameters were specified, this will be returned as `null`.
        #
        #   @return [Object, nil]
        required :params, FinchAPI::Unknown, nil?: true

        # @!attribute route
        #   The URL route path that was specified for the forwarded request.
        #
        #   @return [String]
        required :route, String

        # @!parse
        #   # An object containing details of your original forwarded request, for your ease
        #   #   of reference.
        #   #
        #   # @param data [String, nil]
        #   # @param headers [Object, nil]
        #   # @param method_ [String]
        #   # @param params [Object, nil]
        #   # @param route [String]
        #   #
        #   def initialize(data:, headers:, method_:, params:, route:, **) = super

        # def initialize: (Hash | FinchAPI::BaseModel) -> void
      end
    end
  end
end
