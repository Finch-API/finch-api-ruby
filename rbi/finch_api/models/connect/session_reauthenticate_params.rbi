# typed: strong

module FinchAPI
  module Models
    module Connect
      class SessionReauthenticateParams < FinchAPI::Internal::Type::BaseModel
        extend FinchAPI::Internal::Type::RequestParameters::Converter
        include FinchAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FinchAPI::Connect::SessionReauthenticateParams,
              FinchAPI::Internal::AnyHash
            )
          end

        # The ID of the existing connection to reauthenticate
        sig { returns(String) }
        attr_accessor :connection_id

        # The number of minutes until the session expires (defaults to 43,200, which is 30
        # days)
        sig { returns(T.nilable(Integer)) }
        attr_reader :minutes_to_expire

        sig { params(minutes_to_expire: Integer).void }
        attr_writer :minutes_to_expire

        # The products to request access to (optional for reauthentication)
        sig do
          returns(
            T.nilable(
              T::Array[
                FinchAPI::Connect::SessionReauthenticateParams::Product::OrSymbol
              ]
            )
          )
        end
        attr_accessor :products

        # The URI to redirect to after the Connect flow is completed
        sig { returns(T.nilable(String)) }
        attr_accessor :redirect_uri

        sig do
          params(
            connection_id: String,
            minutes_to_expire: Integer,
            products:
              T.nilable(
                T::Array[
                  FinchAPI::Connect::SessionReauthenticateParams::Product::OrSymbol
                ]
              ),
            redirect_uri: T.nilable(String),
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the existing connection to reauthenticate
          connection_id:,
          # The number of minutes until the session expires (defaults to 43,200, which is 30
          # days)
          minutes_to_expire: nil,
          # The products to request access to (optional for reauthentication)
          products: nil,
          # The URI to redirect to after the Connect flow is completed
          redirect_uri: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              connection_id: String,
              minutes_to_expire: Integer,
              products:
                T.nilable(
                  T::Array[
                    FinchAPI::Connect::SessionReauthenticateParams::Product::OrSymbol
                  ]
                ),
              redirect_uri: T.nilable(String),
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
              T.all(
                Symbol,
                FinchAPI::Connect::SessionReauthenticateParams::Product
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BENEFITS =
            T.let(
              :benefits,
              FinchAPI::Connect::SessionReauthenticateParams::Product::TaggedSymbol
            )
          COMPANY =
            T.let(
              :company,
              FinchAPI::Connect::SessionReauthenticateParams::Product::TaggedSymbol
            )
          DEDUCTION =
            T.let(
              :deduction,
              FinchAPI::Connect::SessionReauthenticateParams::Product::TaggedSymbol
            )
          DIRECTORY =
            T.let(
              :directory,
              FinchAPI::Connect::SessionReauthenticateParams::Product::TaggedSymbol
            )
          DOCUMENTS =
            T.let(
              :documents,
              FinchAPI::Connect::SessionReauthenticateParams::Product::TaggedSymbol
            )
          EMPLOYMENT =
            T.let(
              :employment,
              FinchAPI::Connect::SessionReauthenticateParams::Product::TaggedSymbol
            )
          INDIVIDUAL =
            T.let(
              :individual,
              FinchAPI::Connect::SessionReauthenticateParams::Product::TaggedSymbol
            )
          PAYMENT =
            T.let(
              :payment,
              FinchAPI::Connect::SessionReauthenticateParams::Product::TaggedSymbol
            )
          PAY_STATEMENT =
            T.let(
              :pay_statement,
              FinchAPI::Connect::SessionReauthenticateParams::Product::TaggedSymbol
            )
          SSN =
            T.let(
              :ssn,
              FinchAPI::Connect::SessionReauthenticateParams::Product::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                FinchAPI::Connect::SessionReauthenticateParams::Product::TaggedSymbol
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
