# frozen_string_literal: true

module FinchAPI
  module Models
    # @see FinchAPI::Resources::RequestForwarding#forward
    class RequestForwardingForwardResponse < FinchAPI::Internal::Type::BaseModel
      # @!attribute data
      #   A string representation of the HTTP response body of the forwarded request’s
      #   response received from the underlying integration’s API. This field may be null
      #   in the case where the upstream system’s response is empty.
      #
      #   @return [String, nil]
      required :data, String, nil?: true

      # @!attribute headers
      #   The HTTP headers of the forwarded request’s response, exactly as received from
      #   the underlying integration’s API.
      #
      #   @return [Object, nil]
      required :headers, FinchAPI::Internal::Type::Unknown, nil?: true

      # @!attribute request
      #   An object containing details of your original forwarded request, for your ease
      #   of reference.
      #
      #   @return [FinchAPI::Models::RequestForwardingForwardResponse::Request]
      required :request, -> { FinchAPI::Models::RequestForwardingForwardResponse::Request }

      # @!attribute status_code
      #   The HTTP status code of the forwarded request’s response, exactly received from
      #   the underlying integration’s API. This value will be returned as an integer.
      #
      #   @return [Integer]
      required :status_code, Integer, api_name: :statusCode

      # @!method initialize(data:, headers:, request:, status_code:)
      #   Some parameter documentations has been truncated, see
      #   {FinchAPI::Models::RequestForwardingForwardResponse} for more details.
      #
      #   @param data [String, nil] A string representation of the HTTP response body of the forwarded request’s res
      #
      #   @param headers [Object, nil] The HTTP headers of the forwarded request’s response, exactly as received from t
      #
      #   @param request [FinchAPI::Models::RequestForwardingForwardResponse::Request] An object containing details of your original forwarded request, for your ease o
      #
      #   @param status_code [Integer] The HTTP status code of the forwarded request’s response, exactly received from

      # @see FinchAPI::Models::RequestForwardingForwardResponse#request
      class Request < FinchAPI::Internal::Type::BaseModel
        # @!attribute data
        #   The body that was specified for the forwarded request. If a value was not
        #   specified in the original request, this value will be returned as null ;
        #   otherwise, this value will always be returned as a string.
        #
        #   @return [String, nil]
        required :data, String, nil?: true

        # @!attribute headers
        #   The specified HTTP headers that were included in the forwarded request. If no
        #   headers were specified, this will be returned as `null`.
        #
        #   @return [Object, nil]
        required :headers, FinchAPI::Internal::Type::Unknown, nil?: true

        # @!attribute method_
        #   The HTTP method that was specified for the forwarded request. Valid values
        #   include: `GET` , `POST` , `PUT` , `DELETE` , and `PATCH`.
        #
        #   @return [String]
        required :method_, String, api_name: :method

        # @!attribute params
        #   The query parameters that were included in the forwarded request. If no query
        #   parameters were specified, this will be returned as `null`.
        #
        #   @return [Object, nil]
        required :params, FinchAPI::Internal::Type::Unknown, nil?: true

        # @!attribute route
        #   The URL route path that was specified for the forwarded request.
        #
        #   @return [String]
        required :route, String

        # @!method initialize(data:, headers:, method_:, params:, route:)
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::RequestForwardingForwardResponse::Request} for more details.
        #
        #   An object containing details of your original forwarded request, for your ease
        #   of reference.
        #
        #   @param data [String, nil] The body that was specified for the forwarded request. If a value was not specif
        #
        #   @param headers [Object, nil] The specified HTTP headers that were included in the forwarded request. If no he
        #
        #   @param method_ [String] The HTTP method that was specified for the forwarded request. Valid values inclu
        #
        #   @param params [Object, nil] The query parameters that were included in the forwarded request. If no query pa
        #
        #   @param route [String] The URL route path that was specified for the forwarded request.
      end
    end
  end
end
