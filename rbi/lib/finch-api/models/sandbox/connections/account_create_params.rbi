# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Connections
        class AccountCreateParams < FinchAPI::BaseModel
          extend FinchAPI::RequestParameters::Converter
          include FinchAPI::RequestParameters

          sig { returns(String) }
          def company_id
          end

          sig { params(_: String).returns(String) }
          def company_id=(_)
          end

          # The provider associated with the `access_token`
          sig { returns(String) }
          def provider_id
          end

          sig { params(_: String).returns(String) }
          def provider_id=(_)
          end

          sig do
            returns(
              T.nilable(FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::OrSymbol)
            )
          end
          def authentication_type
          end

          sig do
            params(_: FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::OrSymbol)
              .returns(FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::OrSymbol)
          end
          def authentication_type=(_)
          end

          # Optional, defaults to Organization products (`company`, `directory`,
          #   `employment`, `individual`)
          sig { returns(T.nilable(T::Array[String])) }
          def products
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def products=(_)
          end

          sig do
            params(
              company_id: String,
              provider_id: String,
              authentication_type: FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::OrSymbol,
              products: T::Array[String],
              request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(company_id:, provider_id:, authentication_type: nil, products: nil, request_options: {})
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
          def to_hash
          end

          module AuthenticationType
            extend FinchAPI::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::TaggedSymbol
                )
              end

            CREDENTIAL =
              T.let(
                :credential,
                FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::OrSymbol
              )
            API_TOKEN =
              T.let(
                :api_token,
                FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::OrSymbol
              )
            OAUTH =
              T.let(:oauth, FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::OrSymbol)
            ASSISTED =
              T.let(
                :assisted,
                FinchAPI::Models::Sandbox::Connections::AccountCreateParams::AuthenticationType::OrSymbol
              )
          end
        end
      end
    end
  end
end
