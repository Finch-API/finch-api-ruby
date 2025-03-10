# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Connections
        sig { returns(FinchAPI::Resources::Sandbox::Connections::Accounts) }
        def accounts
        end

        sig do
          params(
            provider_id: String,
            authentication_type: Symbol,
            employee_size: Integer,
            products: T::Array[String],
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::Models::Sandbox::ConnectionCreateResponse)
        end
        def create(
          provider_id:,
          authentication_type: nil,
          employee_size: nil,
          products: nil,
          request_options: {}
        )
        end

        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
