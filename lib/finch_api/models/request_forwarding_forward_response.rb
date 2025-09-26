# frozen_string_literal: true

module FinchAPI
  module Models
    # @see FinchAPI::Resources::RequestForwarding#forward
    class RequestForwardingForwardResponse < FinchAPI::Internal::Type::BaseModel
      # @!attribute request
      #   An object containing details of your original forwarded request, for your ease
      #   of reference.
      #
      #   @return [FinchAPI::Models::RequestForwardingForwardResponse::Request]
      required :request, -> { FinchAPI::Models::RequestForwardingForwardResponse::Request }

      # @!attribute status_code
      #   The HTTP status code of the forwarded request's response, exactly received from
      #   the underlying integration's API. This value will be returned as an integer.
      #
      #   @return [Integer]
      required :status_code, Integer, api_name: :statusCode

      # @!attribute data
      #   A string representation of the HTTP response body of the forwarded request's
      #   response received from the underlying integration's API. This field may be null
      #   in the case where the upstream system's response is empty.
      #
      #   @return [String, nil]
      optional :data, String, nil?: true

      # @!attribute headers
      #   The HTTP headers of the forwarded request's response, exactly as received from
      #   the underlying integration's API.
      #
      #   @return [Hash{Symbol=>Object, nil}, nil]
      optional :headers,
               FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown, nil?: true],
               nil?: true

      # @!method initialize(request:, status_code:, data: nil, headers: nil)
      #   Some parameter documentations has been truncated, see
      #   {FinchAPI::Models::RequestForwardingForwardResponse} for more details.
      #
      #   @param request [FinchAPI::Models::RequestForwardingForwardResponse::Request] An object containing details of your original forwarded request, for your ease o
      #
      #   @param status_code [Integer] The HTTP status code of the forwarded request's response, exactly received from
      #
      #   @param data [String, nil] A string representation of the HTTP response body of the forwarded request's res
      #
      #   @param headers [Hash{Symbol=>Object, nil}, nil] The HTTP headers of the forwarded request's response, exactly as received from t

      # @see FinchAPI::Models::RequestForwardingForwardResponse#request
      class Request < FinchAPI::Internal::Type::BaseModel
        # @!attribute method_
        #   The HTTP method that was specified for the forwarded request. Valid values
        #   include: `GET` , `POST` , `PUT` , `DELETE` , and `PATCH`.
        #
        #   @return [String]
        required :method_, String, api_name: :method

        # @!attribute route
        #   The URL route path that was specified for the forwarded request.
        #
        #   @return [String]
        required :route, String

        # @!attribute data
        #   The body that was specified for the forwarded request.
        #
        #   @return [String, Hash{Symbol=>Object, nil}, nil]
        optional :data,
                 union: -> { FinchAPI::Models::RequestForwardingForwardResponse::Request::Data },
                 nil?: true

        # @!attribute headers
        #   The HTTP headers that were specified for the forwarded request.
        #
        #   @return [Hash{Symbol=>Object, nil}, nil]
        optional :headers,
                 FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown, nil?: true],
                 nil?: true

        # @!attribute params
        #   The query parameters that were specified for the forwarded request.
        #
        #   @return [Hash{Symbol=>Object, nil}, nil]
        optional :params,
                 FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown, nil?: true],
                 nil?: true

        # @!method initialize(method_:, route:, data: nil, headers: nil, params: nil)
        #   Some parameter documentations has been truncated, see
        #   {FinchAPI::Models::RequestForwardingForwardResponse::Request} for more details.
        #
        #   An object containing details of your original forwarded request, for your ease
        #   of reference.
        #
        #   @param method_ [String] The HTTP method that was specified for the forwarded request. Valid values inclu
        #
        #   @param route [String] The URL route path that was specified for the forwarded request.
        #
        #   @param data [String, Hash{Symbol=>Object, nil}, nil] The body that was specified for the forwarded request.
        #
        #   @param headers [Hash{Symbol=>Object, nil}, nil] The HTTP headers that were specified for the forwarded request.
        #
        #   @param params [Hash{Symbol=>Object, nil}, nil] The query parameters that were specified for the forwarded request.

        # The body that was specified for the forwarded request.
        #
        # @see FinchAPI::Models::RequestForwardingForwardResponse::Request#data
        module Data
          extend FinchAPI::Internal::Type::Union

          variant String

          variant -> { FinchAPI::Models::RequestForwardingForwardResponse::Request::Data::UnionMember1Map }

          # @!method self.variants
          #   @return [Array(String, Hash{Symbol=>Object, nil})]

          # @type [FinchAPI::Internal::Type::Converter]
          UnionMember1Map = FinchAPI::Internal::Type::HashOf[FinchAPI::Internal::Type::Unknown, nil?: true]
        end
      end
    end
  end
end
