# typed: strong

module FinchAPI
  module Resources
    class Providers
      # Return details on all available payroll and HR systems.
      sig do
        params(request_options: FinchAPI::RequestOptions::OrHash).returns(
          FinchAPI::Internal::SinglePage[FinchAPI::Provider]
        )
      end
      def list(request_options: {})
      end

      # @api private
      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
