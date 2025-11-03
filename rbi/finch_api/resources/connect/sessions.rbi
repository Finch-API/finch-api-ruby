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
          ).returns(FinchAPI::Models::Connect::SessionNewResponse)
        end
        def new(
          # Unique identifier for the customer
          customer_id:,
          # Name of the customer
          customer_name:,
          # The Finch products to request access to
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
          # The URI to redirect to after the Connect flow is completed
          redirect_uri: nil,
          # Sandbox mode for testing
          sandbox: nil,
          request_options: {}
        )
        end

        # Create a new Connect session for reauthenticating an existing connection
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
          ).returns(FinchAPI::Models::Connect::SessionReauthenticateResponse)
        end
        def reauthenticate(
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

        # @api private
        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
