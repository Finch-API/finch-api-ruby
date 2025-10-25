# typed: strong

module FinchAPI
  module Models
    class CreateAccessTokenResponse < FinchAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            FinchAPI::CreateAccessTokenResponse,
            FinchAPI::Internal::AnyHash
          )
        end

      # The access token for the connection
      sig { returns(String) }
      attr_accessor :access_token

      # The type of application associated with a token.
      sig do
        returns(FinchAPI::CreateAccessTokenResponse::ClientType::TaggedSymbol)
      end
      attr_accessor :client_type

      # The Finch UUID of the connection associated with the `access_token`
      sig { returns(String) }
      attr_accessor :connection_id

      # The type of the connection associated with the token.
      #
      # - `provider` - connection to an external provider
      # - `finch` - finch-generated data.
      sig do
        returns(
          FinchAPI::CreateAccessTokenResponse::ConnectionType::TaggedSymbol
        )
      end
      attr_accessor :connection_type

      # An array of entity IDs that can be accessed with this access token
      sig { returns(T::Array[String]) }
      attr_accessor :entity_ids

      # An array of the authorized products associated with the `access_token`
      sig { returns(T::Array[String]) }
      attr_accessor :products

      # The ID of the provider associated with the `access_token`
      sig { returns(String) }
      attr_accessor :provider_id

      # The RFC 8693 token type (Finch uses `bearer` tokens)
      sig { returns(String) }
      attr_accessor :token_type

      # [DEPRECATED] Use `connection_id` to identify the connection instead of this
      # account ID
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # [DEPRECATED] Use `connection_id` to identify the connection instead of this
      # company ID
      sig { returns(T.nilable(String)) }
      attr_reader :company_id

      sig { params(company_id: String).void }
      attr_writer :company_id

      # The ID of your customer you provided to Finch when a connect session was created
      # for this connection
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      sig do
        params(
          access_token: String,
          client_type:
            FinchAPI::CreateAccessTokenResponse::ClientType::OrSymbol,
          connection_id: String,
          connection_type:
            FinchAPI::CreateAccessTokenResponse::ConnectionType::OrSymbol,
          entity_ids: T::Array[String],
          products: T::Array[String],
          provider_id: String,
          token_type: String,
          account_id: String,
          company_id: String,
          customer_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The access token for the connection
        access_token:,
        # The type of application associated with a token.
        client_type:,
        # The Finch UUID of the connection associated with the `access_token`
        connection_id:,
        # The type of the connection associated with the token.
        #
        # - `provider` - connection to an external provider
        # - `finch` - finch-generated data.
        connection_type:,
        # An array of entity IDs that can be accessed with this access token
        entity_ids:,
        # An array of the authorized products associated with the `access_token`
        products:,
        # The ID of the provider associated with the `access_token`
        provider_id:,
        # The RFC 8693 token type (Finch uses `bearer` tokens)
        token_type:,
        # [DEPRECATED] Use `connection_id` to identify the connection instead of this
        # account ID
        account_id: nil,
        # [DEPRECATED] Use `connection_id` to identify the connection instead of this
        # company ID
        company_id: nil,
        # The ID of your customer you provided to Finch when a connect session was created
        # for this connection
        customer_id: nil
      )
      end

      sig do
        override.returns(
          {
            access_token: String,
            client_type:
              FinchAPI::CreateAccessTokenResponse::ClientType::TaggedSymbol,
            connection_id: String,
            connection_type:
              FinchAPI::CreateAccessTokenResponse::ConnectionType::TaggedSymbol,
            entity_ids: T::Array[String],
            products: T::Array[String],
            provider_id: String,
            token_type: String,
            account_id: String,
            company_id: String,
            customer_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The type of application associated with a token.
      module ClientType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, FinchAPI::CreateAccessTokenResponse::ClientType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEVELOPMENT =
          T.let(
            :development,
            FinchAPI::CreateAccessTokenResponse::ClientType::TaggedSymbol
          )
        PRODUCTION =
          T.let(
            :production,
            FinchAPI::CreateAccessTokenResponse::ClientType::TaggedSymbol
          )
        SANDBOX =
          T.let(
            :sandbox,
            FinchAPI::CreateAccessTokenResponse::ClientType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              FinchAPI::CreateAccessTokenResponse::ClientType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The type of the connection associated with the token.
      #
      # - `provider` - connection to an external provider
      # - `finch` - finch-generated data.
      module ConnectionType
        extend FinchAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, FinchAPI::CreateAccessTokenResponse::ConnectionType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FINCH =
          T.let(
            :finch,
            FinchAPI::CreateAccessTokenResponse::ConnectionType::TaggedSymbol
          )
        PROVIDER =
          T.let(
            :provider,
            FinchAPI::CreateAccessTokenResponse::ConnectionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              FinchAPI::CreateAccessTokenResponse::ConnectionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
