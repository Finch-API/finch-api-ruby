# typed: strong

module FinchAPI
  class Client < FinchAPI::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(T.nilable(String)) }
    def access_token
    end

    sig { returns(T.nilable(String)) }
    def client_id
    end

    sig { returns(T.nilable(String)) }
    def client_secret
    end

    sig { returns(FinchAPI::Resources::AccessTokens) }
    def access_tokens
    end

    sig { returns(FinchAPI::Resources::HRIS) }
    def hris
    end

    sig { returns(FinchAPI::Resources::Providers) }
    def providers
    end

    sig { returns(FinchAPI::Resources::Account) }
    def account
    end

    sig { returns(FinchAPI::Resources::Webhooks) }
    def webhooks
    end

    sig { returns(FinchAPI::Resources::RequestForwarding) }
    def request_forwarding
    end

    sig { returns(FinchAPI::Resources::Jobs) }
    def jobs
    end

    sig { returns(FinchAPI::Resources::Sandbox) }
    def sandbox
    end

    sig { returns(FinchAPI::Resources::Payroll) }
    def payroll
    end

    sig { returns(FinchAPI::Resources::Connect) }
    def connect
    end

    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    sig { returns(T::Hash[String, String]) }
    private def bearer_auth
    end

    sig { returns(T::Hash[String, String]) }
    private def basic_auth
    end

    sig do
      params(
        base_url: T.nilable(String),
        access_token: T.nilable(String),
        client_id: T.nilable(String),
        client_secret: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      )
        .returns(T.attached_class)
    end
    def self.new(
      base_url: nil,
      access_token: nil,
      client_id: ENV["FINCH_CLIENT_ID"],
      client_secret: ENV["FINCH_CLIENT_SECRET"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
