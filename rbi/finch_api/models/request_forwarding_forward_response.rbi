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

      # The HTTP status code of the forwarded request's response, exactly received from
      # the underlying integration's API. This value will be returned as an integer.
      sig { returns(Integer) }
      attr_accessor :status_code

      # A string representation of the HTTP response body of the forwarded request's
      # response received from the underlying integration's API. This field may be null
      # in the case where the upstream system's response is empty.
      sig { returns(T.nilable(String)) }
      attr_accessor :data

      # The HTTP headers of the forwarded request's response, exactly as received from
      # the underlying integration's API.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
      attr_accessor :headers

      sig do
        params(
          request:
            FinchAPI::Models::RequestForwardingForwardResponse::Request::OrHash,
          status_code: Integer,
          data: T.nilable(String),
          headers: T.nilable(T::Hash[Symbol, T.nilable(T.anything)])
        ).returns(T.attached_class)
      end
      def self.new(
        # An object containing details of your original forwarded request, for your ease
        # of reference.
        request:,
        # The HTTP status code of the forwarded request's response, exactly received from
        # the underlying integration's API. This value will be returned as an integer.
        status_code:,
        # A string representation of the HTTP response body of the forwarded request's
        # response received from the underlying integration's API. This field may be null
        # in the case where the upstream system's response is empty.
        data: nil,
        # The HTTP headers of the forwarded request's response, exactly as received from
        # the underlying integration's API.
        headers: nil
      )
      end

      sig do
        override.returns(
          {
            request:
              FinchAPI::Models::RequestForwardingForwardResponse::Request,
            status_code: Integer,
            data: T.nilable(String),
            headers: T.nilable(T::Hash[Symbol, T.nilable(T.anything)])
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

        # The HTTP method that was specified for the forwarded request. Valid values
        # include: `GET` , `POST` , `PUT` , `DELETE` , and `PATCH`.
        sig { returns(String) }
        attr_accessor :method_

        # The URL route path that was specified for the forwarded request.
        sig { returns(String) }
        attr_accessor :route

        # The body that was specified for the forwarded request.
        sig do
          returns(
            T.nilable(
              FinchAPI::Models::RequestForwardingForwardResponse::Request::Data::Variants
            )
          )
        end
        attr_accessor :data

        # The HTTP headers that were specified for the forwarded request.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :headers

        # The query parameters that were specified for the forwarded request.
        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(T.anything)])) }
        attr_accessor :params

        # An object containing details of your original forwarded request, for your ease
        # of reference.
        sig do
          params(
            method_: String,
            route: String,
            data:
              T.nilable(
                FinchAPI::Models::RequestForwardingForwardResponse::Request::Data::Variants
              ),
            headers: T.nilable(T::Hash[Symbol, String]),
            params: T.nilable(T::Hash[Symbol, T.nilable(T.anything)])
          ).returns(T.attached_class)
        end
        def self.new(
          # The HTTP method that was specified for the forwarded request. Valid values
          # include: `GET` , `POST` , `PUT` , `DELETE` , and `PATCH`.
          method_:,
          # The URL route path that was specified for the forwarded request.
          route:,
          # The body that was specified for the forwarded request.
          data: nil,
          # The HTTP headers that were specified for the forwarded request.
          headers: nil,
          # The query parameters that were specified for the forwarded request.
          params: nil
        )
        end

        sig do
          override.returns(
            {
              method_: String,
              route: String,
              data:
                T.nilable(
                  FinchAPI::Models::RequestForwardingForwardResponse::Request::Data::Variants
                ),
              headers: T.nilable(T::Hash[Symbol, String]),
              params: T.nilable(T::Hash[Symbol, T.nilable(T.anything)])
            }
          )
        end
        def to_hash
        end

        # The body that was specified for the forwarded request.
        module Data
          extend FinchAPI::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(String, T::Hash[Symbol, T.nilable(T.anything)])
            end

          sig do
            override.returns(
              T::Array[
                FinchAPI::Models::RequestForwardingForwardResponse::Request::Data::Variants
              ]
            )
          end
          def self.variants
          end

          UnionMember1Map =
            T.let(
              FinchAPI::Internal::Type::HashOf[
                FinchAPI::Internal::Type::Unknown,
                nil?: true
              ],
              FinchAPI::Internal::Type::Converter
            )
        end
      end
    end
  end
end
