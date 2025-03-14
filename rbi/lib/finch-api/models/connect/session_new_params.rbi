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

        sig { returns(T::Array[Symbol]) }
        def products
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
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

        sig { returns(T.nilable(Symbol)) }
        def sandbox
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def sandbox=(_)
        end

        sig do
          params(
            customer_id: String,
            customer_name: String,
            products: T::Array[Symbol],
            customer_email: T.nilable(String),
            integration: T.nilable(FinchAPI::Models::Connect::SessionNewParams::Integration),
            manual: T.nilable(T::Boolean),
            minutes_to_expire: T.nilable(Float),
            redirect_uri: T.nilable(String),
            sandbox: T.nilable(Symbol),
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
                products: T::Array[Symbol],
                customer_email: T.nilable(String),
                integration: T.nilable(FinchAPI::Models::Connect::SessionNewParams::Integration),
                manual: T.nilable(T::Boolean),
                minutes_to_expire: T.nilable(Float),
                redirect_uri: T.nilable(String),
                sandbox: T.nilable(Symbol),
                request_options: FinchAPI::RequestOptions
              }
            )
        end
        def to_hash
        end

        # The Finch products that can be requested during the Connect flow.
        class Product < FinchAPI::Enum
          abstract!

          COMPANY = :company
          DIRECTORY = :directory
          INDIVIDUAL = :individual
          EMPLOYMENT = :employment
          PAYMENT = :payment
          PAY_STATEMENT = :pay_statement
          BENEFITS = :benefits
          SSN = :ssn

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class Integration < FinchAPI::BaseModel
          sig { returns(T.nilable(Symbol)) }
          def auth_method
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def auth_method=(_)
          end

          sig { returns(T.nilable(String)) }
          def provider
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def provider=(_)
          end

          sig do
            params(auth_method: T.nilable(Symbol), provider: T.nilable(String)).returns(T.attached_class)
          end
          def self.new(auth_method: nil, provider: nil)
          end

          sig { override.returns({auth_method: T.nilable(Symbol), provider: T.nilable(String)}) }
          def to_hash
          end

          class AuthMethod < FinchAPI::Enum
            abstract!

            ASSISTED = T.let(:assisted, T.nilable(Symbol))
            CREDENTIAL = T.let(:credential, T.nilable(Symbol))
            OAUTH = T.let(:oauth, T.nilable(Symbol))
            API_TOKEN = T.let(:api_token, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class Sandbox < FinchAPI::Enum
          abstract!

          FINCH = T.let(:finch, T.nilable(Symbol))
          PROVIDER = T.let(:provider, T.nilable(Symbol))

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
