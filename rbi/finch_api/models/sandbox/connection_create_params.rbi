# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class ConnectionCreateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

        # The provider associated with the connection
        sig { returns(String) }
        attr_accessor :provider_id

        sig do
          returns(
            T.nilable(
              FinchAPI::Sandbox::ConnectionCreateParams::AuthenticationType::OrSymbol
            )
          )
        end
        attr_reader :authentication_type

        sig do
          params(
            authentication_type:
              FinchAPI::Sandbox::ConnectionCreateParams::AuthenticationType::OrSymbol
          ).void
        end
        attr_writer :authentication_type

        # Optional: the size of the employer to be created with this connection. Defaults
        # to 20. Note that if this is higher than 100, historical payroll data will not be
        # generated, and instead only one pay period will be created.
        sig { returns(T.nilable(Integer)) }
        attr_reader :employee_size

        sig { params(employee_size: Integer).void }
        attr_writer :employee_size

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :products

        sig { params(products: T::Array[String]).void }
        attr_writer :products

        sig do
          params(
            provider_id: String,
            authentication_type:
              FinchAPI::Sandbox::ConnectionCreateParams::AuthenticationType::OrSymbol,
            employee_size: Integer,
            products: T::Array[String],
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The provider associated with the connection
          provider_id:,
          authentication_type: nil,
          # Optional: the size of the employer to be created with this connection. Defaults
          # to 20. Note that if this is higher than 100, historical payroll data will not be
          # generated, and instead only one pay period will be created.
          employee_size: nil,
          products: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              provider_id: String,
              authentication_type:
                FinchAPI::Sandbox::ConnectionCreateParams::AuthenticationType::OrSymbol,
              employee_size: Integer,
              products: T::Array[String],
              request_options: FinchAPI::RequestOptions
            }
          )
        end
        def to_hash
        end

        module AuthenticationType
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                FinchAPI::Sandbox::ConnectionCreateParams::AuthenticationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDENTIAL =
            T.let(
              :credential,
              FinchAPI::Sandbox::ConnectionCreateParams::AuthenticationType::TaggedSymbol
            )
          API_TOKEN =
            T.let(
              :api_token,
              FinchAPI::Sandbox::ConnectionCreateParams::AuthenticationType::TaggedSymbol
            )
          OAUTH =
            T.let(
              :oauth,
              FinchAPI::Sandbox::ConnectionCreateParams::AuthenticationType::TaggedSymbol
            )
          ASSISTED =
            T.let(
              :assisted,
              FinchAPI::Sandbox::ConnectionCreateParams::AuthenticationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::Sandbox::ConnectionCreateParams::AuthenticationType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
