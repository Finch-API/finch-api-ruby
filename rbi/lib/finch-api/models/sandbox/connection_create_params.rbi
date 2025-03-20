# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class ConnectionCreateParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # The provider associated with the connection
        sig { returns(String) }
        def provider_id
        end

        sig { params(_: String).returns(String) }
        def provider_id=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType::OrSymbol)) }
        def authentication_type
        end

        sig do
          params(_: FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType::OrSymbol)
            .returns(FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType::OrSymbol)
        end
        def authentication_type=(_)
        end

        # Optional: the size of the employer to be created with this connection. Defaults
        #   to 20. Note that if this is higher than 100, historical payroll data will not be
        #   generated, and instead only one pay period will be created.
        sig { returns(T.nilable(Integer)) }
        def employee_size
        end

        sig { params(_: Integer).returns(Integer) }
        def employee_size=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def products
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def products=(_)
        end

        sig do
          params(
            provider_id: String,
            authentication_type: FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType::OrSymbol,
            employee_size: Integer,
            products: T::Array[String],
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(provider_id:, authentication_type: nil, employee_size: nil, products: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                provider_id: String,
                authentication_type: FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType::OrSymbol,
                employee_size: Integer,
                products: T::Array[String],
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash
        end

        module AuthenticationType
          extend FinchAPI::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType::TaggedSymbol) }

          CREDENTIAL =
            T.let(:credential, FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType::OrSymbol)
          API_TOKEN =
            T.let(:api_token, FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType::OrSymbol)
          OAUTH = T.let(:oauth, FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType::OrSymbol)
          ASSISTED =
            T.let(:assisted, FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType::OrSymbol)
        end
      end
    end
  end
end
