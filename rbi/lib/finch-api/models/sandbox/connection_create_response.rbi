# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class ConnectionCreateResponse < FinchAPI::BaseModel
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

        # The ID of the provider associated with the `access_token`.
        sig { returns(String) }
        def provider_id
        end

        sig { params(_: String).returns(String) }
        def provider_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def token_type
        end

        sig { params(_: String).returns(String) }
        def token_type=(_)
        end

        sig do
          params(
            access_token: String,
            account_id: String,
            authentication_type: Symbol,
            company_id: String,
            connection_id: String,
            products: T::Array[String],
            provider_id: String,
            token_type: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          access_token:,
          account_id:,
          authentication_type:,
          company_id:,
          connection_id:,
          products:,
          provider_id:,
          token_type: nil
        )
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
                provider_id: String,
                token_type: String
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
