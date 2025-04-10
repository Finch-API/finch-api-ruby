# typed: strong

module FinchAPI
  module Models
    module Connect
      class SessionReauthenticateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        # The ID of the existing connection to reauthenticate
        sig { returns(String) }
        attr_accessor :connection_id

        # The number of minutes until the session expires (defaults to 43,200, which is 30
        # days)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :minutes_to_expire

        # The products to request access to (optional for reauthentication)
        sig { returns(T.nilable(T::Array[FinchAPI::Models::Connect::SessionReauthenticateParams::Product::OrSymbol])) }
        attr_accessor :products

        # The URI to redirect to after the Connect flow is completed
        sig { returns(T.nilable(String)) }
        attr_accessor :redirect_uri

        sig do
          params(
            connection_id: String,
            minutes_to_expire: T.nilable(Integer),
            products: T.nilable(T::Array[FinchAPI::Models::Connect::SessionReauthenticateParams::Product::OrSymbol]),
            redirect_uri: T.nilable(String),
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          connection_id:,
          minutes_to_expire: nil,
          products: nil,
          redirect_uri: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                connection_id: String,
                minutes_to_expire: T.nilable(Integer),
                products: T.nilable(T::Array[FinchAPI::Models::Connect::SessionReauthenticateParams::Product::OrSymbol]),
                redirect_uri: T.nilable(String),
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash; end

        # The Finch products that can be requested during the Connect flow.
        module Product
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, FinchAPI::Models::Connect::SessionReauthenticateParams::Product) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, FinchAPI::Models::Connect::SessionReauthenticateParams::Product::TaggedSymbol) }

          COMPANY = T.let(:company, FinchAPI::Models::Connect::SessionReauthenticateParams::Product::TaggedSymbol)
          DIRECTORY =
            T.let(:directory, FinchAPI::Models::Connect::SessionReauthenticateParams::Product::TaggedSymbol)
          INDIVIDUAL =
            T.let(:individual, FinchAPI::Models::Connect::SessionReauthenticateParams::Product::TaggedSymbol)
          EMPLOYMENT =
            T.let(:employment, FinchAPI::Models::Connect::SessionReauthenticateParams::Product::TaggedSymbol)
          PAYMENT = T.let(:payment, FinchAPI::Models::Connect::SessionReauthenticateParams::Product::TaggedSymbol)
          PAY_STATEMENT =
            T.let(:pay_statement, FinchAPI::Models::Connect::SessionReauthenticateParams::Product::TaggedSymbol)
          BENEFITS =
            T.let(:benefits, FinchAPI::Models::Connect::SessionReauthenticateParams::Product::TaggedSymbol)
          SSN = T.let(:ssn, FinchAPI::Models::Connect::SessionReauthenticateParams::Product::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::Connect::SessionReauthenticateParams::Product::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
