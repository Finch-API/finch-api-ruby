# typed: strong

module FinchAPI
  module Models
    class RequestForwardingForwardResponse < FinchAPI::BaseModel
      # A string representation of the HTTP response body of the forwarded request’s
      #   response received from the underlying integration’s API. This field may be null
      #   in the case where the upstream system’s response is empty.
      sig { returns(T.nilable(String)) }
      def data
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def data=(_)
      end

      # The HTTP headers of the forwarded request’s response, exactly as received from
      #   the underlying integration’s API.
      sig { returns(T.nilable(T.anything)) }
      def headers
      end

      sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
      def headers=(_)
      end

      # An object containing details of your original forwarded request, for your ease
      #   of reference.
      sig { returns(FinchAPI::Models::RequestForwardingForwardResponse::Request) }
      def request
      end

      sig do
        params(_: FinchAPI::Models::RequestForwardingForwardResponse::Request)
          .returns(FinchAPI::Models::RequestForwardingForwardResponse::Request)
      end
      def request=(_)
      end

      # The HTTP status code of the forwarded request’s response, exactly received from
      #   the underlying integration’s API. This value will be returned as an integer.
      sig { returns(Integer) }
      def status_code
      end

      sig { params(_: Integer).returns(Integer) }
      def status_code=(_)
      end

      sig do
        params(
          data: T.nilable(String),
          headers: T.nilable(T.anything),
          request: FinchAPI::Models::RequestForwardingForwardResponse::Request,
          status_code: Integer
        )
          .returns(T.attached_class)
      end
      def self.new(data:, headers:, request:, status_code:)
      end

      sig do
        override
          .returns(
            {
              data: T.nilable(String),
              headers: T.nilable(T.anything),
              request: FinchAPI::Models::RequestForwardingForwardResponse::Request,
              status_code: Integer
            }
          )
      end
      def to_hash
      end

      class Request < FinchAPI::BaseModel
        # The body that was specified for the forwarded request. If a value was not
        #   specified in the original request, this value will be returned as null ;
        #   otherwise, this value will always be returned as a string.
        sig { returns(T.nilable(String)) }
        def data
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def data=(_)
        end

        # The specified HTTP headers that were included in the forwarded request. If no
        #   headers were specified, this will be returned as `null`.
        sig { returns(T.nilable(T.anything)) }
        def headers
        end

        sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
        def headers=(_)
        end

        # The HTTP method that was specified for the forwarded request. Valid values
        #   include: `GET` , `POST` , `PUT` , `DELETE` , and `PATCH`.
        sig { returns(String) }
        def method_
        end

        sig { params(_: String).returns(String) }
        def method_=(_)
        end

        # The query parameters that were included in the forwarded request. If no query
        #   parameters were specified, this will be returned as `null`.
        sig { returns(T.nilable(T.anything)) }
        def params
        end

        sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
        def params=(_)
        end

        # The URL route path that was specified for the forwarded request.
        sig { returns(String) }
        def route
        end

        sig { params(_: String).returns(String) }
        def route=(_)
        end

        # An object containing details of your original forwarded request, for your ease
        #   of reference.
        sig do
          params(
            data: T.nilable(String),
            headers: T.nilable(T.anything),
            method_: String,
            params: T.nilable(T.anything),
            route: String
          )
            .returns(T.attached_class)
        end
        def self.new(data:, headers:, method_:, params:, route:)
        end

        sig do
          override
            .returns(
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
