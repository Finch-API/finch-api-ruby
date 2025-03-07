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

          sig { returns(String) }
          def account_id
          end

          sig { params(_: String).returns(String) }
          def account_id=(_)
          end

          sig { returns(Symbol) }
          def authentication_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def authentication_type=(_)
          end

          sig { returns(String) }
          def company_id
          end

          sig { params(_: String).returns(String) }
          def company_id=(_)
          end

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
              authentication_type: Symbol,
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
                  authentication_type: Symbol,
                  company_id: String,
                  connection_id: String,
                  products: T::Array[String],
                  provider_id: String
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
