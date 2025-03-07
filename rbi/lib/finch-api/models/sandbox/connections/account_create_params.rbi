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

          sig { returns(String) }
          def provider_id
          end

          sig { params(_: String).returns(String) }
          def provider_id=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def authentication_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def authentication_type=(_)
          end

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
              authentication_type: Symbol,
              products: T::Array[String],
              request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(
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
                  authentication_type: Symbol,
                  products: T::Array[String],
                  request_options: FinchAPI::RequestOptions
                }
              )
          end
          def to_hash
          end

          class AuthenticationType < FinchAPI::Enum
            abstract!

            CREDENTIAL = :credential
            API_TOKEN = :api_token
            OAUTH = :oauth
            ASSISTED = :assisted

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end
      end
    end
  end
end
