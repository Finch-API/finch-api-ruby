# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Jobs
        class Configuration
          # Get configurations for sandbox jobs
          #
          # @param params [FinchAPI::Models::Sandbox::Jobs::ConfigurationRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Array<FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration>]
          def retrieve(params = {})
            @client.request(
              method: :get,
              path: "sandbox/jobs/configuration",
              model: FinchAPI::ArrayOf[FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration],
              options: params[:request_options]
            )
          end

          # Update configurations for sandbox jobs
          #
          # @param params [FinchAPI::Models::Sandbox::Jobs::ConfigurationUpdateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Symbol, FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus] :completion_status
          #
          #   @option params [Symbol, FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::Type] :type
          #
          #   @option params [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration]
          def update(params)
            parsed, options = FinchAPI::Models::Sandbox::Jobs::ConfigurationUpdateParams.dump_request(params)
            @client.request(
              method: :put,
              path: "sandbox/jobs/configuration",
              body: parsed,
              model: FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration,
              options: options
            )
          end

          # @param client [FinchAPI::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
