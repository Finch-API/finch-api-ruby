# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Jobs
        # @return [FinchAPI::Resources::Sandbox::Jobs::Configuration]
        attr_reader :configuration

        # Enqueue a new sandbox job
        #
        # @param params [FinchAPI::Models::Sandbox::JobCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Symbol, FinchAPI::Models::Sandbox::JobCreateParams::Type] :type The type of job to start. Currently the only supported type is `data_sync_all`
        #
        #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [FinchAPI::Models::Sandbox::JobCreateResponse]
        def create(params)
          parsed, options = FinchAPI::Models::Sandbox::JobCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "sandbox/jobs",
            body: parsed,
            model: FinchAPI::Models::Sandbox::JobCreateResponse,
            options: options
          )
        end

        # @param client [FinchAPI::Client]
        def initialize(client:)
          @client = client
          @configuration = FinchAPI::Resources::Sandbox::Jobs::Configuration.new(client: client)
        end
      end
    end
  end
end
