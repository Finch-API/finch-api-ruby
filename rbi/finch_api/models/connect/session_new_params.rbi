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

        # Unique identifier for the customer
        sig { returns(String) }
        attr_accessor :customer_id

        # Name of the customer
        sig { returns(String) }
        attr_accessor :customer_name

        # The Finch products to request access to. Use `benefits` to access deductions
        # endpoints — `deduction` is a deprecated alias that is still accepted but should
        # not be combined with `benefits`.
        sig do
          returns(
            T::Array[FinchAPI::Connect::SessionNewParams::Product::OrSymbol]
          )
        end
        attr_accessor :products

        # Email address of the customer
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_email

        # Integration configuration for the connect session
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

        # Enable manual authentication mode
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :manual

        # The number of minutes until the session expires (defaults to 129,600, which is
        # 90 days)
        sig { returns(T.nilable(Float)) }
        attr_accessor :minutes_to_expire

        # Optional recordkeeping configuration. Can only be provided when the
        # `recordkeeping` product is requested. Currently supports `recordkeeper` set to
        # `voya`, `empower`, `fidelity`, or `transamerica`.
        sig do
          returns(T.nilable(FinchAPI::Connect::SessionNewParams::Recordkeeping))
        end
        attr_reader :recordkeeping

        sig do
          params(
            recordkeeping:
              T.nilable(
                FinchAPI::Connect::SessionNewParams::Recordkeeping::OrHash
              )
          ).void
        end
        attr_writer :recordkeeping

        # The URI to redirect to after the Connect flow is completed
        sig { returns(T.nilable(String)) }
        attr_accessor :redirect_uri

        # Sandbox mode for testing
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
            recordkeeping:
              T.nilable(
                FinchAPI::Connect::SessionNewParams::Recordkeeping::OrHash
              ),
            redirect_uri: T.nilable(String),
            sandbox:
              T.nilable(FinchAPI::Connect::SessionNewParams::Sandbox::OrSymbol),
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the customer
          customer_id:,
          # Name of the customer
          customer_name:,
          # The Finch products to request access to. Use `benefits` to access deductions
          # endpoints — `deduction` is a deprecated alias that is still accepted but should
          # not be combined with `benefits`.
          products:,
          # Email address of the customer
          customer_email: nil,
          # Integration configuration for the connect session
          integration: nil,
          # Enable manual authentication mode
          manual: nil,
          # The number of minutes until the session expires (defaults to 129,600, which is
          # 90 days)
          minutes_to_expire: nil,
          # Optional recordkeeping configuration. Can only be provided when the
          # `recordkeeping` product is requested. Currently supports `recordkeeper` set to
          # `voya`, `empower`, `fidelity`, or `transamerica`.
          recordkeeping: nil,
          # The URI to redirect to after the Connect flow is completed
          redirect_uri: nil,
          # Sandbox mode for testing
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
              recordkeeping:
                T.nilable(FinchAPI::Connect::SessionNewParams::Recordkeeping),
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

        module Product
          extend FinchAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, FinchAPI::Connect::SessionNewParams::Product)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BENEFITS =
            T.let(
              :benefits,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          COMPANY =
            T.let(
              :company,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          DEDUCTION =
            T.let(
              :deduction,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          DIRECTORY =
            T.let(
              :directory,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          DOCUMENTS =
            T.let(
              :documents,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          EMPLOYMENT =
            T.let(
              :employment,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          INDIVIDUAL =
            T.let(
              :individual,
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
          PLANS =
            T.let(
              :plans,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          PLANS_DEPENDENTS =
            T.let(
              :plans_dependents,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          PLANS_ENROLLMENTS =
            T.let(
              :plans_enrollments,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          RECORDKEEPING =
            T.let(
              :recordkeeping,
              FinchAPI::Connect::SessionNewParams::Product::TaggedSymbol
            )
          SSN =
            T.let(
              :ssn,
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

          # The provider to integrate with
          sig { returns(String) }
          attr_accessor :provider

          # The authentication method to use
          sig do
            returns(
              T.nilable(
                FinchAPI::Connect::SessionNewParams::Integration::AuthMethod::OrSymbol
              )
            )
          end
          attr_accessor :auth_method

          # Integration configuration for the connect session
          sig do
            params(
              provider: String,
              auth_method:
                T.nilable(
                  FinchAPI::Connect::SessionNewParams::Integration::AuthMethod::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # The provider to integrate with
            provider:,
            # The authentication method to use
            auth_method: nil
          )
          end

          sig do
            override.returns(
              {
                provider: String,
                auth_method:
                  T.nilable(
                    FinchAPI::Connect::SessionNewParams::Integration::AuthMethod::OrSymbol
                  )
              }
            )
          end
          def to_hash
          end

          # The authentication method to use
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

        class Recordkeeping < FinchAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                FinchAPI::Connect::SessionNewParams::Recordkeeping,
                FinchAPI::Internal::AnyHash
              )
            end

          # The recordkeeper to configure for this connection
          sig do
            returns(
              FinchAPI::Connect::SessionNewParams::Recordkeeping::Recordkeeper::OrSymbol
            )
          end
          attr_accessor :recordkeeper

          # The plan identifier used by the recordkeeper
          sig { returns(T.nilable(String)) }
          attr_accessor :plan_id

          # Optional recordkeeping configuration. Can only be provided when the
          # `recordkeeping` product is requested. Currently supports `recordkeeper` set to
          # `voya`, `empower`, `fidelity`, or `transamerica`.
          sig do
            params(
              recordkeeper:
                FinchAPI::Connect::SessionNewParams::Recordkeeping::Recordkeeper::OrSymbol,
              plan_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The recordkeeper to configure for this connection
            recordkeeper:,
            # The plan identifier used by the recordkeeper
            plan_id: nil
          )
          end

          sig do
            override.returns(
              {
                recordkeeper:
                  FinchAPI::Connect::SessionNewParams::Recordkeeping::Recordkeeper::OrSymbol,
                plan_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # The recordkeeper to configure for this connection
          module Recordkeeper
            extend FinchAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  FinchAPI::Connect::SessionNewParams::Recordkeeping::Recordkeeper
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VOYA =
              T.let(
                :voya,
                FinchAPI::Connect::SessionNewParams::Recordkeeping::Recordkeeper::TaggedSymbol
              )
            EMPOWER =
              T.let(
                :empower,
                FinchAPI::Connect::SessionNewParams::Recordkeeping::Recordkeeper::TaggedSymbol
              )
            FIDELITY =
              T.let(
                :fidelity,
                FinchAPI::Connect::SessionNewParams::Recordkeeping::Recordkeeper::TaggedSymbol
              )
            TRANSAMERICA =
              T.let(
                :transamerica,
                FinchAPI::Connect::SessionNewParams::Recordkeeping::Recordkeeper::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  FinchAPI::Connect::SessionNewParams::Recordkeeping::Recordkeeper::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Sandbox mode for testing
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
