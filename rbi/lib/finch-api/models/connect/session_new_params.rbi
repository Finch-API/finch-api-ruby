# typed: strong

module FinchAPI
  module Models
    module Connect
      class SessionNewParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(String) }
        def customer_name
        end

        sig { params(_: String).returns(String) }
        def customer_name=(_)
        end

        sig { returns(T::Array[FinchAPI::Models::Connect::SessionNewParams::Product::OrSymbol]) }
        def products
        end

        sig do
          params(_: T::Array[FinchAPI::Models::Connect::SessionNewParams::Product::OrSymbol])
            .returns(T::Array[FinchAPI::Models::Connect::SessionNewParams::Product::OrSymbol])
        end
        def products=(_)
        end

        sig { returns(T.nilable(String)) }
        def customer_email
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def customer_email=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Connect::SessionNewParams::Integration)) }
        def integration
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::Connect::SessionNewParams::Integration))
            .returns(T.nilable(FinchAPI::Models::Connect::SessionNewParams::Integration))
        end
        def integration=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def manual
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def manual=(_)
        end

        # The number of minutes until the session expires (defaults to 43,200, which is 30
        #   days)
        sig { returns(T.nilable(Float)) }
        def minutes_to_expire
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def minutes_to_expire=(_)
        end

        sig { returns(T.nilable(String)) }
        def redirect_uri
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def redirect_uri=(_)
        end

        sig { returns(T.nilable(FinchAPI::Models::Connect::SessionNewParams::Sandbox::OrSymbol)) }
        def sandbox
        end

        sig do
          params(_: T.nilable(FinchAPI::Models::Connect::SessionNewParams::Sandbox::OrSymbol))
            .returns(T.nilable(FinchAPI::Models::Connect::SessionNewParams::Sandbox::OrSymbol))
        end
        def sandbox=(_)
        end

        sig do
          params(
            customer_id: String,
            customer_name: String,
            products: T::Array[FinchAPI::Models::Connect::SessionNewParams::Product::OrSymbol],
            customer_email: T.nilable(String),
            integration: T.nilable(FinchAPI::Models::Connect::SessionNewParams::Integration),
            manual: T.nilable(T::Boolean),
            minutes_to_expire: T.nilable(Float),
            redirect_uri: T.nilable(String),
            sandbox: T.nilable(FinchAPI::Models::Connect::SessionNewParams::Sandbox::OrSymbol),
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
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
          extend FinchAPI::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Connect::SessionNewParams::Product) }
          OrSymbol =
            T.type_alias { T.any(Symbol, FinchAPI::Models::Connect::SessionNewParams::Product::TaggedSymbol) }

          COMPANY = T.let(:company, FinchAPI::Models::Connect::SessionNewParams::Product::OrSymbol)
          DIRECTORY = T.let(:directory, FinchAPI::Models::Connect::SessionNewParams::Product::OrSymbol)
          INDIVIDUAL = T.let(:individual, FinchAPI::Models::Connect::SessionNewParams::Product::OrSymbol)
          EMPLOYMENT = T.let(:employment, FinchAPI::Models::Connect::SessionNewParams::Product::OrSymbol)
          PAYMENT = T.let(:payment, FinchAPI::Models::Connect::SessionNewParams::Product::OrSymbol)
          PAY_STATEMENT = T.let(:pay_statement, FinchAPI::Models::Connect::SessionNewParams::Product::OrSymbol)
          BENEFITS = T.let(:benefits, FinchAPI::Models::Connect::SessionNewParams::Product::OrSymbol)
          SSN = T.let(:ssn, FinchAPI::Models::Connect::SessionNewParams::Product::OrSymbol)
        end

        class Integration < FinchAPI::BaseModel
          sig { returns(T.nilable(FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::OrSymbol)) }
          def auth_method
          end

          sig do
            params(_: T.nilable(FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::OrSymbol))
              .returns(T.nilable(FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::OrSymbol))
          end
          def auth_method=(_)
          end

          sig { returns(T.nilable(String)) }
          def provider
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def provider=(_)
          end

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
            extend FinchAPI::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod) }
            OrSymbol =
              T.type_alias { T.any(Symbol, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::TaggedSymbol) }

            ASSISTED =
              T.let(:assisted, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::OrSymbol)
            CREDENTIAL =
              T.let(:credential, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::OrSymbol)
            OAUTH = T.let(:oauth, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::OrSymbol)
            API_TOKEN =
              T.let(:api_token, FinchAPI::Models::Connect::SessionNewParams::Integration::AuthMethod::OrSymbol)
          end
        end

        module Sandbox
          extend FinchAPI::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, FinchAPI::Models::Connect::SessionNewParams::Sandbox) }
          OrSymbol =
            T.type_alias { T.any(Symbol, FinchAPI::Models::Connect::SessionNewParams::Sandbox::TaggedSymbol) }

          FINCH = T.let(:finch, FinchAPI::Models::Connect::SessionNewParams::Sandbox::OrSymbol)
          PROVIDER = T.let(:provider, FinchAPI::Models::Connect::SessionNewParams::Sandbox::OrSymbol)
        end
      end
    end
  end
end
