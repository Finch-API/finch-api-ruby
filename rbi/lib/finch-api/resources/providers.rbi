# typed: strong

module FinchAPI
  module Resources
    class Providers
      # Return details on all available payroll and HR systems.
      sig do
        params(request_options: T.nilable(T.any(FinchAPI::RequestOptions, T::Hash[Symbol, T.anything])))
          .returns(FinchAPI::SinglePage[FinchAPI::Models::Provider])
      end
      def list(request_options: {})
      end

      sig { params(client: FinchAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
