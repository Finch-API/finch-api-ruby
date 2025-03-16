# typed: strong

module FinchAPI
  module Models
    module Sandbox
      module Connections
        class AccountUpdateResponse < FinchAPI::BaseModel
          # [DEPRECATED] Use `connection_id` to associate a connection with an access token
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

          # [DEPRECATED] Use `connection_id` to associate a connection with an access token
          sig { returns(String) }
          def company_id
          end

          sig { params(_: String).returns(String) }
          def company_id=(_)
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

          # The ID of the new connection
          sig { returns(T.nilable(String)) }
          def connection_id
          end

          sig { params(_: String).returns(String) }
          def connection_id=(_)
          end

          sig do
            params(
              account_id: String,
              authentication_type: Symbol,
              company_id: String,
              products: T::Array[String],
              provider_id: String,
              connection_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(account_id:, authentication_type:, company_id:, products:, provider_id:, connection_id: nil)
          end

          sig do
            override
              .returns(
                {
                  account_id: String,
                  authentication_type: Symbol,
                  company_id: String,
                  products: T::Array[String],
                  provider_id: String,
                  connection_id: String
                }
              )
          end
          def to_hash
          end

          class AuthenticationType < FinchAPI::Enum
            abstract!

            Value = type_template(:out) { {fixed: Symbol} }

            CREDENTIAL = :credential
            API_TOKEN = :api_token
            OAUTH = :oauth
            ASSISTED = :assisted
          end
        end
      end
    end
  end
end
