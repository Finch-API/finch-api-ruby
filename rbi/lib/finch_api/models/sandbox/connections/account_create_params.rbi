# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Connections
        class AccountCreateParams < FinchAPI::Internal::Type::BaseModel
          extend FinchAPI::Internal::Type::RequestParameters::Converter
          include FinchAPI::Internal::Type::RequestParameters

          sig { returns(String) }
          attr_accessor :company_id

          # The provider associated with the `access_token`
          sig { returns(String) }
          attr_accessor :provider_id

          sig do
            returns(
              T.nilable(FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::OrSymbol)
            )
          end
          attr_reader :authentication_type

          sig do
            params(
              authentication_type: FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::OrSymbol
            )
              .void
          end
          attr_writer :authentication_type

          # Optional, defaults to Organization products (`company`, `directory`,
          # `employment`, `individual`)
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :products

          sig { params(products: T::Array[String]).void }
          attr_writer :products

          sig do
            params(
              company_id: String,
              provider_id: String,
              authentication_type: FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::OrSymbol,
              products: T::Array[String],
              request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(
            company_id:,
            provider_id:,
            authentication_type: nil,
            products: nil,
            request_options: {}
          )
          end

          sig do
            override
              .returns(
                {
                  company_id: String,
                  provider_id: String,
                  authentication_type: FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::OrSymbol,
                  products: T::Array[String],
                  request_options: FinchAPI::RequestOptions
                }
              )
          end
          def to_hash; end

          module AuthenticationType
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::TaggedSymbol
                )
              end

            CREDENTIAL =
              T.let(
                :credential,
                FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::TaggedSymbol
              )
            API_TOKEN =
              T.let(
                :api_token,
                FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::TaggedSymbol
              )
            OAUTH =
              T.let(
                :oauth,
                FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::TaggedSymbol
              )
            ASSISTED =
              T.let(
                :assisted,
                FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end
      end
    end
  end
end
