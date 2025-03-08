# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Jobs
        class Configuration
          sig do
            params(request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])))
              .returns(FinchAPI::Models::Sandbox::Jobs::ConfigurationRetrieveResponse)
          end
          def retrieve(request_options: {})
          end

          sig do
            params(
              completion_status: Symbol,
              type: Symbol,
              request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
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
