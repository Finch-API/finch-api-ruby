# typed: strong

module FinchAPI
  module Models
    module Connect
      class SessionReauthenticateParams < FinchAPI::BaseModel
        extend FinchAPI::RequestParameters::Converter
        include FinchAPI::RequestParameters

        # The ID of the existing connection to reauthenticate
        sig { returns(String) }
        def connection_id
        end

        sig { params(_: String).returns(String) }
        def connection_id=(_)
        end

        # The number of minutes until the session expires (defaults to 43,200, which is 30
        #   days)
        sig { returns(T.nilable(Integer)) }
        def minutes_to_expire
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def minutes_to_expire=(_)
        end

        # The products to request access to (optional for reauthentication)
        sig { returns(T.nilable(T::Array[Symbol])) }
        def products
        end

        sig { params(_: T.nilable(T::Array[Symbol])).returns(T.nilable(T::Array[Symbol])) }
        def products=(_)
        end

        # The URI to redirect to after the Connect flow is completed
        sig { returns(T.nilable(String)) }
        def redirect_uri
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def redirect_uri=(_)
        end

        sig do
          params(
            connection_id: String,
            minutes_to_expire: T.nilable(Integer),
            products: T.nilable(T::Array[Symbol]),
            redirect_uri: T.nilable(String),
            request_options: T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(connection_id:, minutes_to_expire: nil, products: nil, redirect_uri: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                connection_id: String,
                minutes_to_expire: T.nilable(Integer),
                products: T.nilable(T::Array[Symbol]),
                redirect_uri: T.nilable(String),
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
      end
    end
  end
end
