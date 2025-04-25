# typed: strong

module FinchAPI
  class Client < FinchAPI::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(T.nilable(String)) }
    attr_reader :access_token

    sig { returns(T.nilable(String)) }
    attr_reader :client_id

    sig { returns(T.nilable(String)) }
    attr_reader :client_secret

    sig { returns(FinchAPI::Resources::AccessTokens) }
    attr_reader :access_tokens

    sig { returns(FinchAPI::Resources::HRIS) }
    attr_reader :hris

    sig { returns(FinchAPI::Resources::Providers) }
    attr_reader :providers

    sig { returns(FinchAPI::Resources::Account) }
    attr_reader :account

    sig { returns(FinchAPI::Resources::Webhooks) }
    attr_reader :webhooks

    sig { returns(FinchAPI::Resources::RequestForwarding) }
    attr_reader :request_forwarding

    sig { returns(FinchAPI::Resources::Jobs) }
    attr_reader :jobs

    sig { returns(FinchAPI::Resources::Sandbox) }
    attr_reader :sandbox

    sig { returns(FinchAPI::Resources::Payroll) }
    attr_reader :payroll

    sig { returns(FinchAPI::Resources::Connect) }
    attr_reader :connect

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers; end

    # @api private
    sig { returns(T::Hash[String, String]) }
    private def bearer_auth; end

    # @api private
    sig { returns(T::Hash[String, String]) }
    private def basic_auth; end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        client_id: T.nilable(String),
        client_secret: T.nilable(String),
        access_token: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      )
        .returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["FINCH_CLIENT_ID"]`
      client_id: ENV["FINCH_CLIENT_ID"],
      # Defaults to `ENV["FINCH_CLIENT_SECRET"]`
      client_secret: ENV["FINCH_CLIENT_SECRET"],
      access_token: nil,
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["FINCH_BASE_URL"]`
      base_url: ENV["FINCH_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: FinchAPI::Client::DEFAULT_MAX_RETRIES,
      timeout: FinchAPI::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: FinchAPI::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: FinchAPI::Client::DEFAULT_MAX_RETRY_DELAY
    ); end
  end
end
