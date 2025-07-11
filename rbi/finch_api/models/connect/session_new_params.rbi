# typed: strong

module FinchAPI
  module Models
    module Connect
      class SessionNewParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Connect::SessionNewParams,
              FinchAPI::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :customer_name

        sig do
          returns(
            T::Array[FinchAPI::Connect::SessionNewParams::Product::OrSymbol]
          )
        end
        attr_accessor :products

        sig { returns(T.nilable(String)) }
        attr_accessor :customer_email

        sig do
          returns(T.nilable(FinchAPI::Connect::SessionNewParams::Integration))
        end
        attr_reader :integration

        sig do
          params(
            integration:
              T.nilable(
                FinchAPI::Connect::SessionNewParams::Integration::OrHash
              )
          ).void
        end
        attr_writer :integration

        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :manual

        # The number of minutes until the session expires (defaults to 129,600, which is
        # 90 days)
        sig { returns(T.nilable(Float)) }
        attr_accessor :minutes_to_expire

        sig { returns(T.nilable(String)) }
        attr_accessor :redirect_uri

        sig do
          returns(
            T.nilable(FinchAPI::Connect::SessionNewParams::Sandbox::OrSymbol)
          )
        end
        attr_accessor :sandbox

        sig do
          params(
            customer_id: String,
            customer_name: String,
            products:
              T::Array[FinchAPI::Connect::SessionNewParams::Product::OrSymbol],
            customer_email: T.nilable(String),
            integration:
              T.nilable(
                FinchAPI::Connect::SessionNewParams::Integration::OrHash
              ),
            manual: T.nilable(T::Boolean),
            minutes_to_expire: T.nilable(Float),
            redirect_uri: T.nilable(String),
            sandbox:
              T.nilable(FinchAPI::Connect::SessionNewParams::Sandbox::OrSymbol),
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          customer_name:,
          products:,
          customer_email: nil,
          integration: nil,
          manual: nil,
          # The number of minutes until the session expires (defaults to 129,600, which is
          # 90 days)
          minutes_to_expire: nil,
          redirect_uri: nil,
          sandbox: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              customer_name: String,
              products:
                T::Array[
                  FinchAPI::Connect::SessionNewParams::Product::OrSymbol
                ],
              customer_email: T.nilable(String),
              integration:
                T.nilable(FinchAPI::Connect::SessionNewParams::Integration),
              manual: T.nilable(T::Boolean),
              minutes_to_expire: T.nilable(Float),
              redirect_uri: T.nilable(String),
              sandbox:
                T.nilable(
                  FinchAPI::Connect::SessionNewParams::Sandbox::OrSymbol
                ),
              request_options: FinchAPI::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The Finch products that can be requested during the Connect flow.
        module Product
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, FinchAPI::Connect::SessionNewParams::Product)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPANY =
            T.let(
              :company,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          DIRECTORY =
            T.let(
              :directory,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          INDIVIDUAL =
            T.let(
              :individual,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          EMPLOYMENT =
            T.let(
              :employment,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          PAYMENT =
            T.let(
              :payment,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          PAY_STATEMENT =
            T.let(
              :pay_statement,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          BENEFITS =
            T.let(
              :benefits,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          SSN =
            T.let(
              :ssn,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          DEDUCTION =
            T.let(
              :deduction,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          DOCUMENTS =
            T.let(
              :documents,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Integration < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::Connect::SessionNewParams::Integration,
                FinchAPI::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                FinchAPI::Connect::SessionNewParams::Integration::AuthMethod::OrSymbol
              )
            )
          end
          attr_accessor :auth_method

          sig { returns(T.nilable(String)) }
          attr_accessor :provider

          sig do
            params(
              auth_method:
                T.nilable(
                  FinchAPI::Connect::SessionNewParams::Integration::AuthMethod::OrSymbol
                ),
              provider: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(auth_method: nil, provider: nil)
          end

          sig do
            override.returns(
              {
                auth_method:
                  T.nilable(
                    FinchAPI::Connect::SessionNewParams::Integration::AuthMethod::OrSymbol
                  ),
                provider: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          module AuthMethod
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::Connect::SessionNewParams::Integration::AuthMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ASSISTED =
              T.let(
                :assisted,
                FinchAPI::Connect::SessionNewParams::Integration::AuthMethod::TaggedSymbol
              )
            CREDENTIAL =
              T.let(
                :credential,
                FinchAPI::Connect::SessionNewParams::Integration::AuthMethod::TaggedSymbol
              )
            OAUTH =
              T.let(
                :oauth,
                FinchAPI::Connect::SessionNewParams::Integration::AuthMethod::TaggedSymbol
              )
            API_TOKEN =
              T.let(
                :api_token,
                FinchAPI::Connect::SessionNewParams::Integration::AuthMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Connect::SessionNewParams::Integration::AuthMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Sandbox
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, FinchAPI::Connect::SessionNewParams::Sandbox)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FINCH =
            T.let(
              :finch,
              FinchAPI::Connect::SessionNewParams::Sandbox::TaggedSymbol
            )
          PROVIDER =
            T.let(
              :provider,
              FinchAPI::Connect::SessionNewParams::Sandbox::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::Connect::SessionNewParams::Sandbox::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
