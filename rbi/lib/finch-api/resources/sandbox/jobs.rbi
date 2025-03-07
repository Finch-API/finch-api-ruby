# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Jobs
        sig { returns(FinchAPI::Resources::Sandbox::Jobs::Configuration) }
        def configuration
        end

        sig do
          params(
            type: Symbol,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(FinchAPI::Models::Sandbox::JobCreateResponse)
        end
        def create(type:, request_options: {})
        end

        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
