# typed: strong

module FinchAPI
  module Models
    class RequestForwardingForwardResponse < FinchAPI::BaseModel
      sig { returns(T.nilable(String)) }
      def data
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def data=(_)
      end

      sig { returns(T.nilable(T.anything)) }
      def headers
      end

      sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
      def headers=(_)
      end

      sig { returns(FinchAPI::Models::RequestForwardingForwardResponse::Request) }
      def request
      end

      sig do
        params(_: FinchAPI::Models::RequestForwardingForwardResponse::Request)
          .returns(FinchAPI::Models::RequestForwardingForwardResponse::Request)
      end
      def request=(_)
      end

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
        sig { returns(T.nilable(String)) }
        def data
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def data=(_)
        end

        sig { returns(T.nilable(T.anything)) }
        def headers
        end

        sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
        def headers=(_)
        end

        sig { returns(String) }
        def method_
        end

        sig { params(_: String).returns(String) }
        def method_=(_)
        end

        sig { returns(T.nilable(T.anything)) }
        def params
        end

        sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
        def params=(_)
        end

        sig { returns(String) }
        def route
        end

        sig { params(_: String).returns(String) }
        def route=(_)
        end

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
