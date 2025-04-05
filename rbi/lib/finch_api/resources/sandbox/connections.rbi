# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Connections
        sig { returns(FinchAPI::Resources::Sandbox::Connections::Accounts) }
        attr_reader :accounts

        # Create a new connection (new company/provider pair) with a new account
        sig do
          params(
            provider_id: String,
            authentication_type: FinchAPI::Models::Sandbox::ConnectionCreateParams::AuthenticationType::OrSymbol,
            employee_size: Integer,
            products: T::Array[String],
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Internal::AnyHash))
          )
            .returns(FinchAPI::Models::Sandbox::ConnectionCreateResponse)
        end
        def create(
          # The provider associated with the connection
          provider_id:,
          authentication_type: nil,
          # Optional: the size of the employer to be created with this connection. Defaults
          #   to 20. Note that if this is higher than 100, historical payroll data will not be
          #   generated, and instead only one pay period will be created.
          employee_size: nil,
          products: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
