# typed: strong

module FinchAPI
  module Models
    class RequestForwardingForwardResponse < FinchAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            FinchAPI::Models::RequestForwardingForwardResponse,
            FinchAPI::Internal::AnyHash
          )
        end

      # A string representation of the HTTP response body of the forwarded request’s
      # response received from the underlying integration’s API. This field may be null
      # in the case where the upstream system’s response is empty.
      sig { returns(T.nilable(String)) }
      attr_accessor :data

      # The HTTP headers of the forwarded request’s response, exactly as received from
      # the underlying integration’s API.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :headers

      # An object containing details of your original forwarded request, for your ease
      # of reference.
      sig do
        returns(FinchAPI::Models::RequestForwardingForwardResponse::Request)
      end
      attr_reader :request

      sig do
        params(
          request:
            FinchAPI::Models::RequestForwardingForwardResponse::Request::OrHash
        ).void
      end
      attr_writer :request

      # The HTTP status code of the forwarded request’s response, exactly received from
      # the underlying integration’s API. This value will be returned as an integer.
      sig { returns(Integer) }
      attr_accessor :status_code

      sig do
        params(
          data: T.nilable(String),
          headers: T.nilable(T.anything),
          request:
            FinchAPI::Models::RequestForwardingForwardResponse::Request::OrHash,
          status_code: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # A string representation of the HTTP response body of the forwarded request’s
        # response received from the underlying integration’s API. This field may be null
        # in the case where the upstream system’s response is empty.
        data:,
        # The HTTP headers of the forwarded request’s response, exactly as received from
        # the underlying integration’s API.
        headers:,
        # An object containing details of your original forwarded request, for your ease
        # of reference.
        request:,
        # The HTTP status code of the forwarded request’s response, exactly received from
        # the underlying integration’s API. This value will be returned as an integer.
        status_code:
      )
      end

      sig do
        override.returns(
          {
            data: T.nilable(String),
            headers: T.nilable(T.anything),
            request:
              FinchAPI::Models::RequestForwardingForwardResponse::Request,
            status_code: Integer
          }
        )
      end
      def to_hash
      end

      class Request < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Models::RequestForwardingForwardResponse::Request,
              FinchAPI::Internal::AnyHash
            )
          end

        # The body that was specified for the forwarded request. If a value was not
        # specified in the original request, this value will be returned as null ;
        # otherwise, this value will always be returned as a string.
        sig { returns(T.nilable(String)) }
        attr_accessor :data

        # The specified HTTP headers that were included in the forwarded request. If no
        # headers were specified, this will be returned as `null`.
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :headers

        # The HTTP method that was specified for the forwarded request. Valid values
        # include: `GET` , `POST` , `PUT` , `DELETE` , and `PATCH`.
        sig { returns(String) }
        attr_accessor :method_

        # The query parameters that were included in the forwarded request. If no query
        # parameters were specified, this will be returned as `null`.
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :params

        # The URL route path that was specified for the forwarded request.
        sig { returns(String) }
        attr_accessor :route

        # An object containing details of your original forwarded request, for your ease
        # of reference.
        sig do
          params(
            data: T.nilable(String),
            headers: T.nilable(T.anything),
            method_: String,
            params: T.nilable(T.anything),
            route: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The body that was specified for the forwarded request. If a value was not
          # specified in the original request, this value will be returned as null ;
          # otherwise, this value will always be returned as a string.
          data:,
          # The specified HTTP headers that were included in the forwarded request. If no
          # headers were specified, this will be returned as `null`.
          headers:,
          # The HTTP method that was specified for the forwarded request. Valid values
          # include: `GET` , `POST` , `PUT` , `DELETE` , and `PATCH`.
          method_:,
          # The query parameters that were included in the forwarded request. If no query
          # parameters were specified, this will be returned as `null`.
          params:,
          # The URL route path that was specified for the forwarded request.
          route:
        )
        end

        sig do
          override.returns(
            {
              data: T.nilable(String),
              headers: T.nilable(T.anything),
              method_: String,
              params: T.nilable(T.anything),
              route: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
