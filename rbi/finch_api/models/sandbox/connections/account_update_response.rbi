# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Connections
        class AccountUpdateResponse < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse,
                FinchAPI::Internal::AnyHash
              )
            end

          # [DEPRECATED] Use `connection_id` to associate a connection with an access token
          sig { returns(String) }
          attr_accessor :account_id

          sig do
            returns(
              FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse::AuthenticationType::TaggedSymbol
            )
          end
          attr_accessor :authentication_type

          # [DEPRECATED] Use `connection_id` to associate a connection with an access token
          sig { returns(String) }
          attr_accessor :company_id

          sig { returns(T::Array[String]) }
          attr_accessor :products

          # The ID of the provider associated with the `access_token`
          sig { returns(String) }
          attr_accessor :provider_id

          # The ID of the new connection
          sig { returns(T.nilable(String)) }
          attr_reader :connection_id

          sig { params(connection_id: String).void }
          attr_writer :connection_id

          sig do
            params(
              account_id: String,
              authentication_type:
                FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse::AuthenticationType::OrSymbol,
              company_id: String,
              products: T::Array[String],
              provider_id: String,
              connection_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # [DEPRECATED] Use `connection_id` to associate a connection with an access token
            account_id:,
            authentication_type:,
            # [DEPRECATED] Use `connection_id` to associate a connection with an access token
            company_id:,
            products:,
            # The ID of the provider associated with the `access_token`
            provider_id:,
            # The ID of the new connection
            connection_id: nil
          )
          end

          sig do
            override.returns(
              {
                account_id: String,
                authentication_type:
                  FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse::AuthenticationType::TaggedSymbol,
                company_id: String,
                products: T::Array[String],
                provider_id: String,
                connection_id: String
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
                  FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse::AuthenticationType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDENTIAL =
              T.let(
                :credential,
                FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse::AuthenticationType::TaggedSymbol
              )
            API_TOKEN =
              T.let(
                :api_token,
                FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse::AuthenticationType::TaggedSymbol
              )
            OAUTH =
              T.let(
                :oauth,
                FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse::AuthenticationType::TaggedSymbol
              )
            ASSISTED =
              T.let(
                :assisted,
                FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse::AuthenticationType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Models::Sandbox::Connections::AccountUpdateResponse::AuthenticationType::TaggedSymbol
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
end
