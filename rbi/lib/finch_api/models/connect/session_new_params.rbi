# typed: strong

module FinchAPI
  module Models
    module Connect
      class SessionNewParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :customer_name

        sig { returns(T::Array[FinchAPI::Models::Connect::SessionNewParams::Product::OrSymbol]) }
        attr_accessor :products

        sig { returns(T.nilable(String)) }
        attr_accessor :customer_email

        sig { returns(T.nilable(FinchAPI::Models::Connect::SessionNewParams::Integration)) }
        attr_reader :integration

        sig do
          params(
            integration: T.nilable(T.any(FinchAPI::Models::Connect::SessionNewParams::Integration, FinchAPI::Internal::AnyHash))
          )
            .void
        end
        attr_writer :integration

        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :manual

        # The number of minutes until the session expires (defaults to 43,200, which is 30
        #   days)
        sig { returns(T.nilable(Float)) }
        attr_accessor :minutes_to_expire

        sig { returns(T.nilable(String)) }
        attr_accessor :redirect_uri

        sig { returns(T.nilable(FinchAPI::Models::Connect::SessionNewParams::Sandbox::OrSymbol)) }
        attr_accessor :sandbox

        sig do
          params(
            customer_id: String,
            customer_name: String,
            products: T::Array[FinchAPI::Models::Connect::SessionNewParams::Product::OrSymbol],
            customer_email: T.nilable(String),
            integration: T.nilable(T.any(FinchAPI::Models::Connect::SessionNewParams::Integration, FinchAPI::Internal::AnyHash)),
            manual: T.nilable(T::Boolean),
            minutes_to_expire: T.nilable(Float),
            redirect_uri: T.nilable(String),
            sandbox: T.nilable(FinchAPI::Models::Connect::SessionNewParams::Sandbox::OrSymbol),
            request_options: T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          customer_name:,
          products:,
          customer_email: nil,
          integration: nil,
          manual: nil,
          minutes_to_expire: nil,
          redirect_uri: nil,
          sandbox: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                customer_id: String,
                customer_name: String,
                products: T::Array[FinchAPI::Models::Connect::SessionNewParams::Product::OrSymbol],
                customer_email: T.nilable(String),
                integration: T.nilable(FinchAPI::Models::Connect::SessionNewParams::Integration),
                manual: T.nilable(T::Boolean),
                minutes_to_expire: T.nilable(Float),
                redirect_uri: T.nilable(String),
                sandbox: T.nilable(FinchAPI::Models::Connect::SessionNewParams::Sandbox::OrSymbol),
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash
        end

        # The Finch products that can be requested during the Connect flow.
        module Product
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Connect::SessionNewParams::Product) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, FinchAPI::Models::Connect::SessionNewParams::Product::TaggedSymbol) }

          COMPANY = T.let(:company, FinchAPI::Models::Connect::SessionNewParams::Product::TaggedSymbol)
          DIRECTORY = T.let(:directory, FinchAPI::Models::Connect::SessionNewParams::Product::TaggedSymbol)
          INDIVIDUAL = T.let(:individual, FinchAPI::Models::Connect::SessionNewParams::Product::TaggedSymbol)
          EMPLOYMENT = T.let(:employment, FinchAPI::Models::Connect::SessionNewParams::Product::TaggedSymbol)
          PAYMENT = T.let(:payment, FinchAPI::Models::Connect::SessionNewParams::Product::TaggedSymbol)
          PAY_STATEMENT = T.let(:pay_statement, FinchAPI::Models::Connect::SessionNewParams::Product::TaggedSymbol)
          BENEFITS = T.let(:benefits, FinchAPI::Models::Connect::SessionNewParams::Product::TaggedSymbol)
          SSN = T.let(:ssn, FinchAPI::Models::Connect::SessionNewParams::Product::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::Connect::SessionNewParams::Product::TaggedSymbol]) }
          def self.values
          end
        end

        class Integration < FinchAPI::Internal::Type::BaseModel
          sig { returns(T.nilable(FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::OrSymbol)) }
          attr_accessor :auth_method

          sig { returns(T.nilable(String)) }
          attr_accessor :provider

          sig do
            params(
              auth_method: T.nilable(FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::OrSymbol),
              provider: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(auth_method: nil, provider: nil)
          end

          sig do
            override
              .returns(
                {
                  auth_method: T.nilable(FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::OrSymbol),
                  provider: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          module AuthMethod
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::TaggedSymbol) }

            ASSISTED =
              T.let(:assisted, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::TaggedSymbol)
            CREDENTIAL =
              T.let(:credential, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::TaggedSymbol)
            OAUTH = T.let(:oauth, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::TaggedSymbol)
            API_TOKEN =
              T.let(:api_token, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::TaggedSymbol)

            sig do
              override
                .returns(T::Array[FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::TaggedSymbol])
            end
            def self.values
            end
          end
        end

        module Sandbox
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Connect::SessionNewParams::Sandbox) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, FinchAPI::Models::Connect::SessionNewParams::Sandbox::TaggedSymbol) }

          FINCH = T.let(:finch, FinchAPI::Models::Connect::SessionNewParams::Sandbox::TaggedSymbol)
          PROVIDER = T.let(:provider, FinchAPI::Models::Connect::SessionNewParams::Sandbox::TaggedSymbol)

          sig { override.returns(T::Array[FinchAPI::Models::Connect::SessionNewParams::Sandbox::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
