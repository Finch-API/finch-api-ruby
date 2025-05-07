# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Jobs
        # @return [FinchAPI::Resources::Sandbox::Jobs::Configuration]
        attr_reader :configuration

        # Enqueue a new sandbox job
        #
        # @overload create(type:, request_options: {})
        #
        # @param type [Symbol, FinchAPI::Sandbox::JobCreateParams::Type] The type of job to start. Currently the only supported type is `data_sync_all`
        #
        # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FinchAPI::Models::Sandbox::JobCreateResponse]
        #
        # @see FinchAPI::Models::Sandbox::JobCreateParams
        def create(params)
          parsed, options = FinchAPI::Sandbox::JobCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "sandbox/jobs",
            body: parsed,
            model: FinchAPI::Models::Sandbox::JobCreateResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [FinchAPI::Client]
        def initialize(client:)
          @client = client
          @configuration = FinchAPI::Resources::Sandbox::Jobs::Configuration.new(client: client)
        end
      end
    end
  end
end
