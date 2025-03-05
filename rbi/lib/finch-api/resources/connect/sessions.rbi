# typed: strong

module FinchAPI
  module Resources
    class Connect
      class Sessions
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
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
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
          minutes_to_expire: nil,
          redirect_uri: nil,
          sandbox: nil,
          request_options: {}
        )
        end

        sig do
          params(
            connection_id: String,
            minutes_to_expire: T.nilable(Integer),
            products: T.nilable(T::Array[Symbol]),
            redirect_uri: T.nilable(String),
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::Models::Connect::SessionReauthenticateResponse)
        end
        def reauthenticate(
          connection_id:,
          minutes_to_expire: nil,
          products: nil,
          redirect_uri: nil,
          request_options: {}
        )
        end

        sig { params(client: FinchAPI::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
