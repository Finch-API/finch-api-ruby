# typed: strong

module FinchAPI
  module Models
    module Sandbox
      class ConnectionCreateResponse < FinchAPI::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :access_token

        # [DEPRECATED] Use `connection_id` to associate a connection with an access token
        sig { returns(String) }
        attr_accessor :account_id

        sig { returns(FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::TaggedSymbol) }
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
            authentication_type: FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::OrSymbol,
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
        ); end
        sig do
          override
            .returns(
              {
                access_token: String,
                account_id: String,
                authentication_type: FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::TaggedSymbol,
                company_id: String,
                connection_id: String,
                products: T::Array[String],
                provider_id: String,
                token_type: String
              }
            )
        end
        def to_hash; end

        module AuthenticationType
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::TaggedSymbol
              )
            end

          CREDENTIAL =
            T.let(:credential, FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::TaggedSymbol)
          API_TOKEN =
            T.let(:api_token, FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::TaggedSymbol)
          OAUTH =
            T.let(:oauth, FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::TaggedSymbol)
          ASSISTED =
            T.let(:assisted, FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::TaggedSymbol)

          sig do
            override
              .returns(T::Array[FinchAPI::Models::Sandbox::ConnectionCreateResponse::AuthenticationType::TaggedSymbol])
          end
          def self.values; end
        end
      end
    end
  end
end
