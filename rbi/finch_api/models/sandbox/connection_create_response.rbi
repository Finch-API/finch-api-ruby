# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class ConnectionCreateResponse < FinchAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, FinchAPI::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :access_token

        # [DEPRECATED] Use `connection_id` to associate a connection with an access token
        sig { returns(String) }
        attr_accessor :account_id

        sig do
          returns(
            FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::TaggedSymbol
          )
        end
        attr_accessor :authentication_type

        # [DEPRECATED] Use `connection_id` to associate a connection with an access token
        sig { returns(String) }
        attr_accessor :company_id

        # The ID of the new connection
        sig { returns(String) }
        attr_accessor :connection_id

        sig { returns(T::Array[String]) }
        attr_accessor :products

        # The ID of the provider associated with the `access_token`.
        sig { returns(String) }
        attr_accessor :provider_id

        sig { returns(T.nilable(String)) }
        attr_reader :token_type

        sig { params(token_type: String).void }
        attr_writer :token_type

        sig do
          params(
            access_token: String,
            account_id: String,
            authentication_type:
              FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::OrSymbol,
            company_id: String,
            connection_id: String,
            products: T::Array[String],
            provider_id: String,
            token_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          access_token:,
          # [DEPRECATED] Use `connection_id` to associate a connection with an access token
          account_id:,
          authentication_type:,
          # [DEPRECATED] Use `connection_id` to associate a connection with an access token
          company_id:,
          # The ID of the new connection
          connection_id:,
          products:,
          # The ID of the provider associated with the `access_token`.
          provider_id:,
          token_type: nil
        )
        end

        sig do
          override.returns(
            {
              access_token: String,
              account_id: String,
              authentication_type:
                FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::TaggedSymbol,
              company_id: String,
              connection_id: String,
              products: T::Array[String],
              provider_id: String,
              token_type: String
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
                FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDENTIAL =
            T.let(
              :credential,
              FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::TaggedSymbol
            )
          API_TOKEN =
            T.let(
              :api_token,
              FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::TaggedSymbol
            )
          OAUTH =
            T.let(
              :oauth,
              FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::TaggedSymbol
            )
          ASSISTED =
            T.let(
              :assisted,
              FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::TaggedSymbol
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
