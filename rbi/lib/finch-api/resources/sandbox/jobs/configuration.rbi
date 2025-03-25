# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Jobs
        class Configuration
          # Get configurations for sandbox jobs
          sig do
            params(request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash)))
              .returns(T::Array[FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration])
          end
          def retrieve(request_options: {})
          end

          # Update configurations for sandbox jobs
          sig do
            params(
              completion_status: FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::CompletionStatus::OrSymbol,
              type: FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration::Type::OrSymbol,
              request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash))
            )
              .returns(FinchAPI::Models::Sandbox::Jobs::SandboxJobConfiguration)
          end
          def update(completion_status:, type:, request_options: {})
          end

          sig { params(client: FinchAPI::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
