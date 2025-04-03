# typed: strong

module FinchAPI
  module Resources
    class Connect
      class Sessions
        # Create a new connect session for an employer
        sig do
          params(
            customer_id: String,
            customer_name: String,
            products: T::Array[FinchAPI::Models::Connect::SessionNewParams::Product::OrSymbol],
            customer_email: T.nilable(String),
            integration: T.nilable(
              T.any(FinchAPI::Models::Connect::SessionNewParams::Integration, FinchAPI::Internal::Util::AnyHash)
            ),
            manual: T.nilable(T::Boolean),
            minutes_to_expire: T.nilable(Float),
            redirect_uri: T.nilable(String),
            sandbox: T.nilable(FinchAPI::Models::Connect::SessionNewParams::Sandbox::OrSymbol),
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::Util::AnyHash))
          )
            .returns(FinchAPI::Models::Connect::SessionNewResponse)
        end
        def new(
          customer_id:,
          customer_name:,
          products:,
          customer_email: nil,
          integration: nil,
          manual: nil,
          # The number of minutes until the session expires (defaults to 43,200, which is 30
          #   days)
          minutes_to_expire: nil,
          redirect_uri: nil,
          sandbox: nil,
          request_options: {}
        )
        end

        # Create a new Connect session for reauthenticating an existing connection
        sig do
          params(
            connection_id: String,
            minutes_to_expire: T.nilable(Integer),
            products: T.nilable(T::Array[FinchAPI::Models::Connect::SessionReauthenticateParams::Product::OrSymbol]),
            redirect_uri: T.nilable(String),
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::Util::AnyHash))
          )
            .returns(FinchAPI::Models::Connect::SessionReauthenticateResponse)
        end
        def reauthenticate(
          # The ID of the existing connection to reauthenticate
          connection_id:,
          # The number of minutes until the session expires (defaults to 43,200, which is 30
          #   days)
          minutes_to_expire: nil,
          # The products to request access to (optional for reauthentication)
          products: nil,
          # The URI to redirect to after the Connect flow is completed
          redirect_uri: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
