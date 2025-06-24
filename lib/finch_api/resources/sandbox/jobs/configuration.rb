# frozen_string_literal: true

module FinchAPI
  module Resources
    class Sandbox
      class Jobs
        class Configuration
          # Get configurations for sandbox jobs
          #
          # @overload retrieve(request_options: {})
          #
          # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration>]
          #
          # @see FinchAPI::Models::Sandbox::Jobs::ConfigurationRetrieveParams
          def retrieve(params = {})
            @client.request(
              method: :get,
              path: "sandbox/jobs/configuration",
              model: FinchAPI::Internal::Type::ArrayOf[FinchAPI::Sandbox::Jobs::SandboxJobConfiguration],
              options: params[:request_options]
            )
          end

          # Update configurations for sandbox jobs
          #
          # @overload update(completion_status:, type:, request_options: {})
          #
          # @param completion_status [Symbol, FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus]
          # @param type [Symbol, FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::Type]
          # @param request_options [FinchAPI::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration]
          #
          # @see FinchAPI::Models::Sandbox::Jobs::ConfigurationUpdateParams
          def update(params)
            parsed, options = FinchAPI::Sandbox::Jobs::ConfigurationUpdateParams.dump_request(params)
            @client.request(
              method: :put,
              path: "sandbox/jobs/configuration",
              body: parsed,
              model: FinchAPI::Sandbox::Jobs::SandboxJobConfiguration,
              options: options
            )
          end

          # @api private
          #
          # @param client [FinchAPI::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
