# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Connections
        class AccountCreateResponse < FinchAPI::BaseModel
          sig { returns(String) }
          def access_token
          end

          sig { params(_: String).returns(String) }
          def access_token=(_)
          end

          # [DEPRECATED] Use `connection_id` to associate a connection with an access token
          sig { returns(String) }
          def account_id
          end

          sig { params(_: String).returns(String) }
          def account_id=(_)
          end

          sig { returns(FinchAPI::Models::Sandbox::Connections::AccountCreateResponse::AuthenticationType::TaggedSymbol) }
          def authentication_type
          end

          sig do
            params(_: FinchAPI::Models::Sandbox::Connections::AccountCreateResponse::AuthenticationType::TaggedSymbol)
              .returns(FinchAPI::Models::Sandbox::Connections::AccountCreateResponse::AuthenticationType::TaggedSymbol)
          end
          def authentication_type=(_)
          end

          # [DEPRECATED] Use `connection_id` to associate a connection with an access token
          sig { returns(String) }
          def company_id
          end

          sig { params(_: String).returns(String) }
          def company_id=(_)
          end

          # The ID of the new connection
          sig { returns(String) }
          def connection_id
          end

          sig { params(_: String).returns(String) }
          def connection_id=(_)
          end

          sig { returns(T::Array[String]) }
          def products
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def products=(_)
          end

          # The ID of the provider associated with the `access_token`
          sig { returns(String) }
          def provider_id
          end

          sig { params(_: String).returns(String) }
          def provider_id=(_)
          end

          sig do
            params(
              access_token: String,
              account_id: String,
              authentication_type: FinchAPI::Models::Sandbox::Connections::AccountCreateResponse::AuthenticationType::TaggedSymbol,
              company_id: String,
              connection_id: String,
              products: T::Array[String],
              provider_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(access_token:, account_id:, authentication_type:, company_id:, connection_id:, products:, provider_id:)
          end

          sig do
            override
              .returns(
                {
                  access_token: String,
                  account_id: String,
                  authentication_type: FinchAPI::Models::Sandbox::Connections::AccountCreateResponse::AuthenticationType::TaggedSymbol,
                  company_id: String,
                  connection_id: String,
                  products: T::Array[String],
                  provider_id: String
                }
              )
          end
          def to_hash
          end

          module AuthenticationType
            extend FinchAPI::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::Connections::AccountCreateResponse::AuthenticationType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  FinchAPI::Models::Sandbox::Connections::AccountCreateResponse::AuthenticationType::TaggedSymbol
                )
              end

            CREDENTIAL =
              T.let(
                :credential,
                FinchAPI::Models::Sandbox::Connections::AccountCreateResponse::AuthenticationType::TaggedSymbol
              )
            API_TOKEN =
              T.let(
                :api_token,
                FinchAPI::Models::Sandbox::Connections::AccountCreateResponse::AuthenticationType::TaggedSymbol
              )
            OAUTH =
              T.let(
                :oauth,
                FinchAPI::Models::Sandbox::Connections::AccountCreateResponse::AuthenticationType::TaggedSymbol
              )
            ASSISTED =
              T.let(
                :assisted,
                FinchAPI::Models::Sandbox::Connections::AccountCreateResponse::AuthenticationType::TaggedSymbol
              )
          end
        end
      end
    end
  end
end
