# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Jobs
        class Configuration
          # Get configurations for sandbox jobs
          sig do
            params(request_options: FinchAPI::RequestOptions::OrHash).returns(
              T::Array[FinchAPI::Sandbox::Jobs::SandboxJobConfiguration]
            )
          end
          def retrieve(request_options: {})
          end

          # Update configurations for sandbox jobs
          sig do
            params(
              completion_status:
                FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::OrSymbol,
              type:
                FinchAPI::Sandbox::Jobs::SandboxJobConfiguration::Type::OrSymbol,
              request_options: FinchAPI::RequestOptions::OrHash
            ).returns(FinchAPI::Sandbox::Jobs::SandboxJobConfiguration)
          end
          def update(completion_status:, type:, request_options: {})
          end

          # @api private
          sig { params(client: FinchAPI::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
