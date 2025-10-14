# typed: strong

module FinchAPI
  module Resources
    class Connect
      class Sessions
        # Create a new connect session for an employer
        sig do
          params(
            customer_email: T.nilable(String),
            customer_id: String,
            customer_name: String,
            integration:
              T.nilable(
                FinchAPI::Connect::SessionNewParams::Integration::OrHash
              ),
            manual: T.nilable(T::Boolean),
            minutes_to_expire: T.nilable(Float),
            products:
              T::Array[FinchAPI::Connect::SessionNewParams::Product::OrSymbol],
            redirect_uri: T.nilable(String),
            sandbox:
              T.nilable(FinchAPI::Connect::SessionNewParams::Sandbox::OrSymbol),
            request_options: FinchAPI::RequestOptions::OrHash
          ).returns(FinchAPI::Models::Connect::SessionNewResponse)
        end
        def new(
          # Email address of the customer
          customer_email:,
          # Unique identifier for the customer
          customer_id:,
          # Name of the customer
          customer_name:,
          # Integration configuration for the connect session
          integration:,
          # Enable manual authentication mode
          manual:,
          # The number of minutes until the session expires (defaults to 129,600, which is
          # 90 days)
          minutes_to_expire:,
          # The Finch products to request access to
          products:,
          # The URI to redirect to after the Connect flow is completed
          redirect_uri:,
          # Sandbox mode for testing
          sandbox:,
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
          minutes_to_expire:,
          # The products to request access to (optional for reauthentication)
          products:,
          # The URI to redirect to after the Connect flow is completed
          redirect_uri:,
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
