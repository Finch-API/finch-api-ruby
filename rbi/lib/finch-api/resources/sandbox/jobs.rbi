# typed: strong

module FinchAPI
  module Resources
    class Sandbox
      class Jobs
        sig { returns(FinchAPI::Resources::Sandbox::Jobs::Configuration) }
        attr_reader :configuration

        # Enqueue a new sandbox job
        sig do
          params(
            type: FinchAPI::Models::Sandbox::JobCreateParams::Type::OrSymbol,
            request_options: T.nilable(T.any(FinchAPI::RequestOptions, FinchAPI::Util::AnyHash))
          )
            .returns(FinchAPI::Models::Sandbox::JobCreateResponse)
        end
        def create(
          # The type of job to start. Currently the only supported type is `data_sync_all`
          type:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: FinchAPI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
