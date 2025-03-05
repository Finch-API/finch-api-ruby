# frozen_string_literal: true

module FinchAPI
  class Client < FinchAPI::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String, nil]
    attr_reader :access_token

    # @return [String, nil]
    attr_reader :client_id

    # @return [String, nil]
    attr_reader :client_secret

    # @return [FinchAPI::Resources::AccessTokens]
    attr_reader :access_tokens

    # @return [FinchAPI::Resources::HRIS]
    attr_reader :hris

    # @return [FinchAPI::Resources::Providers]
    attr_reader :providers

    # @return [FinchAPI::Resources::Account]
    attr_reader :account

    # @return [FinchAPI::Resources::Webhooks]
    attr_reader :webhooks

    # @return [FinchAPI::Resources::RequestForwarding]
    attr_reader :request_forwarding

    # @return [FinchAPI::Resources::Jobs]
    attr_reader :jobs

    # @return [FinchAPI::Resources::Sandbox]
    attr_reader :sandbox

    # @return [FinchAPI::Resources::Payroll]
    attr_reader :payroll

    # @return [FinchAPI::Resources::Connect]
    attr_reader :connect

    # @private
    #
    # @return [Hash{String=>String}]
    #
    private def auth_headers
      {**bearer_auth, **basic_auth}
    end

    # @private
    #
    # @return [Hash{String=>String}]
    #
    private def bearer_auth
      return {} if @access_token.nil?

      {"authorization" => "Bearer #{@access_token}"}
    end

    # @private
    #
    # @return [Hash{String=>String}]
    #
    private def basic_auth
      return {} if @client_id.nil? || @client_secret.nil?

      base64_credentials = ["#{@client_id}:#{@client_secret}"].pack("m0")
      {"authorization" => "Basic #{base64_credentials}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
    #
    # @param access_token [String, nil]
    #
    # @param client_id [String, nil] Defaults to `ENV["FINCH_CLIENT_ID"]`
    #
    # @param client_secret [String, nil] Defaults to `ENV["FINCH_CLIENT_SECRET"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    #
    def initialize(
      base_url: nil,
      access_token: nil,
      client_id: ENV["FINCH_CLIENT_ID"],
      client_secret: ENV["FINCH_CLIENT_SECRET"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.tryfinch.com"

      headers = {
        "finch-api-version" => "2020-09-17"
      }

      @access_token = access_token&.to_s
      @client_id = client_id&.to_s
      @client_secret = client_secret&.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        headers: headers
      )

      @access_tokens = FinchAPI::Resources::AccessTokens.new(client: self)
      @hris = FinchAPI::Resources::HRIS.new(client: self)
      @providers = FinchAPI::Resources::Providers.new(client: self)
      @account = FinchAPI::Resources::Account.new(client: self)
      @webhooks = FinchAPI::Resources::Webhooks.new(client: self)
      @request_forwarding = FinchAPI::Resources::RequestForwarding.new(client: self)
      @jobs = FinchAPI::Resources::Jobs.new(client: self)
      @sandbox = FinchAPI::Resources::Sandbox.new(client: self)
      @payroll = FinchAPI::Resources::Payroll.new(client: self)
      @connect = FinchAPI::Resources::Connect.new(client: self)
    end
  end
end
